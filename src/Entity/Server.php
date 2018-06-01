<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\ServerRepository")
 * @ORM\Table(name="servers")
 */
class Server
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $model;

    /**
     * @ORM\Column(type="integer")
     */
    private $ram;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $ramType;


    /**
     * @ORM\Column(type="integer")
     */
    private $storage;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $storageType;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $storageCount;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $location;

    /**
     * @ORM\Column(type="float")
     */
    private $price;

    /**
     * @ORM\Column(type="string", length=25)
     */
    private $currency;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getModel()
    {
        return $this->model;
    }

    /**
     * @param $model
     * @return $this
     */
    public function setModel($model)
    {
        $this->model = $model;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getRam()
    {
        return $this->ram;
    }

    /**
     * @param $ram
     * @return $this
     */
    public function setRam($ram)
    {
        $this->ram = $ram;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getRamType()
    {
        return $this->ramType;
    }

    /**
     * @param $ramType
     * @return $this
     */
    public function setRamType($ramType)
    {
        $this->ramType = $ramType;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getLocation()
    {
        return $this->location;
    }

    /**
     * @param $location
     * @return $this
     */
    public function setLocation($location)
    {
        $this->location = $location;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * @param $price
     * @return $this
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * @return mixed
     */
    public function getStorage()
    {
        return $this->storage;
    }

    /**
     * @param mixed $storage
     */
    public function setStorage($storage)
    {
        $this->storage = $storage;
    }

    /**
     * @return mixed
     */
    public function getStorageType()
    {
        return $this->storageType;
    }

    /**
     * @param mixed $storageType
     */
    public function setStorageType($storageType)
    {
        $this->storageType = $storageType;
    }

    /**
     * @return mixed
     */
    public function getStorageCount()
    {
        return $this->storageCount;
    }

    /**
     * @param mixed $storageCount
     */
    public function setStorageCount($storageCount)
    {
        $this->storageCount = $storageCount;
    }

    /**
     * @return mixed
     */
    public function getCurrency()
    {
        return $this->currency;
    }

    /**
     * @param mixed $currency
     */
    public function setCurrency($currency)
    {
        $this->currency = $currency;
    }






}
