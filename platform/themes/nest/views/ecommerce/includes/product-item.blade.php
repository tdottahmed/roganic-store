@if ($product)
    <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" @if(isset($loop)) data-wow-delay="{{ ($loop->index + 1) / 10 }}s" @endif>
        <div class="product-img-action-wrap">
            <div class="product-img product-img-zoom">
                <a href="{{ $product->url }}">
                    <img class="default-img" src="{{ RvMedia::getImageUrl($product->image, 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}">
                    <img class="hover-img" src="{{ RvMedia::getImageUrl(Arr::get($product->images, 1, $product->image), 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}">
                </a>
            </div>
            <div class="product-action-1">
                @php
                    $actionMaxWidth = 40;

                    if (EcommerceHelper::isWishlistEnabled()) {
                        $actionMaxWidth += 36;
                    }

                    if (EcommerceHelper::isCompareEnabled()) {
                        $actionMaxWidth += 40;
                    }
                @endphp
                <div class="product-action-wrap" style="max-width: {{ $actionMaxWidth }}px !important;">
                    <a aria-label="{{ __('Quick View') }}" href="#" class="action-btn hover-up js-quick-view-button" data-url="{{ route('public.ajax.quick-view', $product->id) }}">
                        <i class="fi-rs-eye"></i>
                    </a>
                    @if (EcommerceHelper::isWishlistEnabled())
                        <a aria-label="{{ __('Add To Wishlist') }}" href="#" class="action-btn hover-up js-add-to-wishlist-button" data-url="{{ route('public.wishlist.add', $product->id) }}">
                            <i class="fi-rs-heart"></i>
                        </a>
                    @endif
                    @if (EcommerceHelper::isCompareEnabled())
                        <a aria-label="{{ __('Add To Compare') }}" href="#" class="action-btn hover-up js-add-to-compare-button" data-url="{{ route('public.compare.add', $product->id) }}">
                            <i class="fi-rs-shuffle"></i>
                        </a>
                    @endif
                </div>
            </div>
            <div class="product-badges product-badges-position product-badges-mrg">
                @if ($product->isOutOfStock())
                    <span class="bg-dark" style="font-size: 11px;">{{ __('Out Of Stock') }}</span>
                @else
                    @if ($product->productLabels->isNotEmpty())
                        @foreach ($product->productLabels as $label)
                            <span {!! $label->css_styles !!}>{{ $label->name }}</span>
                        @endforeach
                    @else
                        @if (! EcommerceHelper::hideProductPrice() || EcommerceHelper::isCartEnabled())
                            @if ($product->front_sale_price !== $product->price)
                                <span class="hot">{{ get_sale_percentage($product->price, $product->front_sale_price) }}</span>
                            @endif
                        @endif
                    @endif
                @endif
            </div>
        </div>
        <div class="product-content-wrap">
            @if ($category = $product->categories->sortByDesc('id')->first())
                <div class="product-category">
                    <a href="{{ $category->url }}">{!! BaseHelper::clean($category->name) !!}</a>
                </div>
            @endif
            <h2 class="text-truncate"><a href="{{ $product->url }}" title="{{ $product->name }}" title="{{ $product->name }}">{{ $product->name }}</a></h2>

            @if (EcommerceHelper::isReviewEnabled() && $product->reviews_count)
                <div class="product-rate-cover">
                    <div class="product-rate d-inline-block">
                        <div class="product-rating" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                    </div>
                    <span class="font-small ml-5 text-muted">({{ $product->reviews_count }})</span>
                </div>
            @endif
            @if (is_plugin_active('marketplace') && $product->store->id)
                <div class="text-truncate">
                    <span class="font-small text-muted">{{ __('Sold By') }} <a href="{{ $product->store->url }}">{!! BaseHelper::clean($product->store->name) !!}</a></span>
                </div>
            @endif

            <div class="product-card-bottom d-md-flex d-block">
                {!! apply_filters('ecommerce_before_product_price_in_listing', null, $product) !!}

                @include(Theme::getThemeNamespace('views.ecommerce.includes.product-price'))

                {!! apply_filters('ecommerce_after_product_price_in_listing', null, $product) !!}

                @if (EcommerceHelper::isCartEnabled())
                    <div class="add-cart">
                        @if($product->has_variations)
                            <a aria-label="{{ __('Quick Shop') }}"
                                class="action-btn add mt-md-0 mt-3"
                                data-bb-toggle="quick-shop"
                                data-url="{{ route('public.ajax.quick-shop', $product->slug) }}"
                                href="#"
                                title="{{ __('Quick Shop') }}">
                                <i class="fi-rs-shopping-cart mr-5"></i> <span class="d-inline-block">{{ __('Add') }}</span>
                            </a>
                        @else
                            <a aria-label="{{ __('Add To Cart') }}"
                                class="action-btn add-to-cart-button add mt-md-0 mt-3"
                                data-bb-toggle="add-to-cart"
                                data-id="{{ $product->id }}"
                                data-url="{{ route('public.cart.add-to-cart') }}"
                                href="#"
                                title="{{ __('Add To Cart') }}">
                                <i class="fi-rs-shopping-cart mr-5"></i> <span class="d-inline-block">{{ __('Add') }}</span>
                            </a>
                        @endif
                    </div>
                @endif
            </div>
        </div>
    </div>
@endif
