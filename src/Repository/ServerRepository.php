<?php

namespace App\Repository;

use App\Entity\Server;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query;
use FOS\RestBundle\Request\ParamFetcher;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Server|null find($id, $lockMode = null, $lockVersion = null)
 * @method Server|null findOneBy(array $criteria, array $orderBy = null)
 * @method Server[]    findAll()
 * @method Server[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ServerRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Server::class);
    }

    /**
     * Return the list of servers based on filters
     * @param ParamFetcher $filters
     * @return Query
     */

    public function findByFilters(ParamFetcher $filters)
    {
        $query = $this->createQueryBuilder('s')
            ->orderBy('s.id', 'DESC')

        ;

        if(!empty($filters->get('location'))) {
            $query->andWhere('s.location LIKE :location')
                  ->setParameter('location', '%'.$filters->get('location').'%');
        }

        if(!empty($filters->get('storage_min')) && !empty($filters->get('storage_max'))) {
            $query->andWhere('s.storage >= :storage_min AND s.storage <= :storage_max')
                  ->setParameter('storage_min', $filters->get('storage_min'))
                  ->setParameter('storage_max', $filters->get('storage_max'));
        }

        if(!empty($filters->get('storage_type'))) {
            $query->andWhere('s.storageType LIKE  :storage_type')
                ->setParameter('storage_type', '%'.$filters->get('storage_type').'%');
        }

        if(!empty($filters->get('ram'))) {
            $ramParams = explode(',', $filters->get('ram'));
            $query->andWhere('s.ram IN (:ram)')
                ->setParameter('ram', $ramParams);
        }

        return $query->getQuery();
    }

    /**
     * Return the list of server locations
     *
     * @return array $locations
     */
    public function findLocations()
    {
        $servers = $this->createQueryBuilder('s')
            ->addSelect('s.location')
            ->orderBy('s.location', 'ASC')
            ->groupBy('s.location')
            ->getQuery()->getScalarResult();

        $locations = array_column($servers, 'location');

        return $locations;
    }

    /**
     * Return the list of server storage types
     *
     * @return array $storageTypes
     */
    public function findStorageTypes()
    {
        $servers = $this->createQueryBuilder('s')
            ->addSelect('s.storageType')
            ->orderBy('s.storageType', 'ASC')
            ->groupBy('s.storageType')
            ->getQuery()->getScalarResult();

        $storageTypes = array_column($servers, 'storageType');

        return $storageTypes;
    }


}
