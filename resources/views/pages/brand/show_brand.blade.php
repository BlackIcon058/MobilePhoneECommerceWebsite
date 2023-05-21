<!-- start_event_group -->
@extends('layout')
@section('content')

<!-- start_event_group -->

<!-- smartphone hot -->
<div class="content_group">
                    <div class="content_group-title">
                        <?php
                                $danhmuc = "";
                            $new_varriable = request('new_varriable');
                            if($new_varriable == 12){
                                $danhmuc = 'Điện thoại';
                            }elseif($new_varriable == 13){
                                $danhmuc = 'Âm thanh';
                            }elseif($new_varriable == 14){
                                $danhmuc = 'Phụ kiện'; 
                            }elseif($new_varriable == 15){
                                $danhmuc = 'Khuyến mãi';
                            }
                        ?>
                        
                        @foreach($brand_name as $key => $name)
                                <?php
                                        if($new_varriable == 12){
                                                $name->brand_name = 'Apple';
                                        }
                                ?>
                        <h1>THƯƠNG HIỆU SẢN PHẨM: {{($name->brand_name)}}</h1>
                        
                        @endforeach
                        
                        <ul>
                            @foreach($brand as $key => $brandItem)
                            
                            <li>
                            <a href="{{URL::to('/thuong-hieu-san-pham/'.$brandItem->brand_id.'?new_varriable='.$new_varriable)}}">
                                    <span>{{($brandItem->brand_name)}}</span>
                                </a>
                            </li>
                            
                            @endforeach
                            <!-- <div class="hidden_on_mobile">
                                <li>
                                    < <a href="#">
                                
                                        <span>Xem tất cả <b>179</b> điện thoại</span>
                                    </a>
                                </li>
                            </div>  -->
                        </ul>
                        
                    </div>
                    <h2 style="margin-bottom: 20px;">Danh mục: {{$danhmuc}}</h2>

                    <div class="row row_main_content content_group-body">
                        @foreach($brand_by_id as $key => $product)
                        @if($product->category_id == $new_varriable)
                        <div class="col col_main_content l-2-4 c-4">
                            <a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}" class="group_item">
                                <span class="installment">Trả góp 0%</span>
                                <img class="group_item-img"
                                    src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="Photos">
                                <div class="group_item-body">
                                    <span class="group_item_event-sale">11.11 siêu sale</span>
                                    <h3 class="group_item-body_name">
                                        {{($product->product_name)}}
                                    </h3>
                                    <ul class="group_item-body_tag">
                                        <li><span>Ram 8 GB</span></li>
                                        <li><span>SSD 256 GB</span></li>
                                    </ul>
                                    <p class="item_txt_online">Online giá rẻ</p>
                                    
                                    <span class="group_item_price"><strong>{{number_format($product->product_price).' '.'VNĐ'}}</strong></span>
                                    <ul class="group_item_review">
                                        <li class="group_item_star">
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li class="group_item_star">
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li class="group_item_star">
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li class="group_item_star">
                                            <i class="fas fa-star"></i>
                                        </li>
                                        <li class="group_item_star">
                                            <i class="fas fa-star-half-alt"></i>
                                        </li>
                                        <li class="group_item_number_overrate">
                                            <p>40</p>
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                        @endif
                        @endforeach
                    </div>
                    
                    <div class="show_on_mobile show_all_item">
                        <a class="" href="#">
                            <span>Xem tất cả <b>179</b> điện thoại</span>
                        </a>
                    </div>
                </div>

@endsection