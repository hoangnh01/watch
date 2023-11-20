<?php
return [
    [
        'name' => 'Product',
        'list-check' => ['attribute','category','keyword','product','country'],
        'icon' => 'fa fa-database',
        'sub'  => [
            [
                'name'  => 'Attribute',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Category',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit'
            ],
            [
                'name'  => 'Keyword',
                'namespace' => 'keyword',
                'route' => 'admin.keyword.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Product',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database'
            ],
            [
                'name'  => 'Country',
                'namespace' => 'country',
                'route' => 'admin.country.index',
                'icon'  => 'fa fa-key'
            ],
        ]
    ],
    [
        'name' => 'Blog',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
        'sub'  => [
            [
                'name'  => 'Menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa fa-key'
            ],
            [
                'name'  => 'Article',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa fa-key'
            ],
        ]
    ],
    [
        'name' => 'Account',
        'list-check' => ['user','rating','comment','contact'],
        'icon' => 'fa fa-user',
        'sub'  => [
            [
                'name'  => 'User',
                'route' => 'admin.user.index',
                'namespace' => 'user',
                'icon'  => 'fa fa-user'
            ],
            [
                'name'  => 'Rating',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star'
            ],
            [
                'name'  => 'Comment',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star'
            ],
            [
                'name'  => 'Contact',
                'namespace' => 'contact',
                'route' => 'admin.contact',
                'icon'  => 'fa fa-star'
            ],
        ]
    ],
    [
        'name' => 'Transaction',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
        'sub'  => [
            [
                'name'  => 'Transaction',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart'
            ]
        ]
    ],
    [
        'name'  => 'System',
        'label' => 'true'
    ]
];
