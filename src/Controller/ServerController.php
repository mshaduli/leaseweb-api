<?php

namespace App\Controller;

use FOS\RestBundle\Controller\FOSRestController;
use Symfony\Component\Routing\Annotation\Route;
use FOS\RestBundle\View\View;
use FOS\RestBundle\Request\ParamFetcher;
//use Nelmio\ApiDocBundle\Annotation\ApiDoc;
use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\Annotations\QueryParam;

class ServerController extends FOSRestController
{
    /**
     * Returns the servers based on filters.
     *
     *
     * @QueryParam(name="storage_min", nullable=true, description="Min Storage size to filter")
     * @QueryParam(name="storage_max", nullable=true, description="Max Storage size to filter")
     * @QueryParam(name="ram", requirements="\d+", nullable=true, description="Size of RAM")
     * @QueryParam(name="storage_type", nullable=true, description="Type of disk")
     * @QueryParam(name="location", nullable=true, description="location")
     * @QueryParam(name="page", requirements="\d+", default=1, nullable=true, description="Offset from which to start listing pages.")
     * @QueryParam(name="limit", requirements="\d+", default=12, description="How many pages to return.")
     *
     * @param ParamFetcher $paramFetcher
     * @Get("/api/servers/list")
     * @return View
     */
    public function getServersAction(ParamFetcher $paramFetcher)
    {
        $query = $this->getDoctrine()->getRepository('App:Server')->findByFilters($paramFetcher);


        $pagination = $this->get('knp_paginator')->paginate(
            $query,
            $paramFetcher->get('page'),
            $paramFetcher->get('limit')
        );


        $view = View::create();
        if($pagination->getTotalItemCount() <= 0) {
            $status = 400;
        }
        else {
            $status = 200;
        }
        $view->setData(
            array(
                'servers' => $pagination,
                'totalItems' => $pagination->getTotalItemCount()
            )
        )->setStatusCode(200);

        return $view;
    }

    /**
     * Returns the server filter master data.
     *
     * @Get("/api/filters")
     * @return View
     */
    public function getFiltersAction()
    {
        $locations = $this->getDoctrine()->getRepository('App:Server')->findLocations();
        $storageTypes = $this->getDoctrine()->getRepository('App:Server')->findStorageTypes();

        $view = View::create();
        $view->setData(array(
            'locations' => $locations,
            'storage_types' => $storageTypes
        ))->setStatusCode(200);

        return $view;
    }
}
