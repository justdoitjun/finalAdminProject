<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80);">
  <div class="container py-6 py-lg-7 text-white overlay-content">
    <div class="row">
      <div class="col-xl-8">
        <h1 class="display-3 fw-bold text-shadow">Let us guide you home</h1>
        <p class="text-lg text-shadow mb-6">Uncover the best offers on the real estate market.</p>
      </div>
    </div>
  </div>
</section>
<div class="container position-relative mt-n6 z-index-20">
  <ul class="nav nav-tabs search-bar-nav-tabs" role="tablist">
    <li class="nav-item me-2"><a class="nav-link active" href="#buy" data-bs-toggle="tab" role="tab">Buy</a></li>
    <li class="nav-item me-2"><a class="nav-link" href="#rent" data-bs-toggle="tab" role="tab">Rent</a></li>
    <li class="nav-item"><a class="nav-link" href="#sell" data-bs-toggle="tab" role="tab">Sell</a></li>
  </ul>
  <div class="search-bar search-bar-with-tabs p-3 p-lg-4">
    <div class="tab-content">
      <div class="tab-pane fade show active" id="buy" role="tabpanel">
        <form action="#">
          <div class="row">
            <div class="col-lg-4 d-flex align-items-center form-group no-divider">
              <select class="selectpicker form-control" title="Location" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="city_0">San Francisco</option>
                <option value="city_1">Los Angeles</option>
                <option value="city_2">Santa Monica</option>
                <option value="city_3">San Diego</option>
                <option value="city_4">Fresno</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Type" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="type_0">Duplex</option>
                <option value="type_1">Appartment</option>
                <option value="type_2">House</option>
                <option value="type_3">Land</option>
                <option value="type_4">Other</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Max price" data-style="btn-form-control">
                <option value="price_0">$5,000</option>
                <option value="price_1">$10,000</option>
                <option value="price_2">$25,000</option>
                <option value="price_3">$50,000</option>
              </select>
            </div>
            <div class="col-lg-2 d-grid form-group mb-0">
              <button class="btn btn-primary h-100" type="submit">Search </button>
            </div>
          </div>
        </form>
      </div>
      <div class="tab-pane fade" id="rent" role="tabpanel">
        <form action="#">
          <div class="row">
            <div class="col-lg-4 d-flex align-items-center form-group no-divider">
              <select class="selectpicker form-control" title="Location" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="city_0">San Francisco</option>
                <option value="city_1">Los Angeles</option>
                <option value="city_2">Santa Monica</option>
                <option value="city_3">San Diego</option>
                <option value="city_4">Fresno</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Type" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="type_0">Duplex</option>
                <option value="type_1">Appartment</option>
                <option value="type_2">House</option>
                <option value="type_3">Land</option>
                <option value="type_4">Other</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Max price" data-style="btn-form-control">
                <option value="price_0">$5,000</option>
                <option value="price_1">$10,000</option>
                <option value="price_2">$25,000</option>
                <option value="price_3">$50,000</option>
              </select>
            </div>
            <div class="col-lg-2 d-grid form-group mb-0">
              <button class="btn btn-primary h-100" type="submit">Search </button>
            </div>
          </div>
        </form>
      </div>
      <div class="tab-pane fade" id="sell" role="tabpanel">
        <form action="#">
          <div class="row">
            <div class="col-lg-4 d-flex align-items-center form-group no-divider">
              <select class="selectpicker form-control" title="Location" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="city_0">San Francisco</option>
                <option value="city_1">Los Angeles</option>
                <option value="city_2">Santa Monica</option>
                <option value="city_3">San Diego</option>
                <option value="city_4">Fresno</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Type" data-style="btn-form-control" multiple data-selected-text-format="count &gt; 2">
                <option value="type_0">Duplex</option>
                <option value="type_1">Appartment</option>
                <option value="type_2">House</option>
                <option value="type_3">Land</option>
                <option value="type_4">Other</option>
              </select>
            </div>
            <div class="col-md-6 col-lg-3 d-flex align-items-center form-group no-divider">
              <select class="selectpicker" title="Max price" data-style="btn-form-control">
                <option value="price_0">$5,000</option>
                <option value="price_1">$10,000</option>
                <option value="price_2">$25,000</option>
                <option value="price_3">$50,000</option>
              </select>
            </div>
            <div class="col-lg-2 d-grid form-group mb-0">
              <button class="btn btn-primary h-100" type="submit">Search </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<section class="py-6">
  <div class="container">
    <div class="row mb-lg-6">
      <div class="col-md-8">
        <p class="subtitle text-secondary">Find your home today</p>
        <h2 class="mb-md-0">Featured listings around you</h2>
      </div>
      <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-rooms.html">
        See all featured listings<i class="fas fa-angle-double-right ms-2"></i></a></div>
    </div>
  </div>
  <div class="container-fluid">
    <!-- Slider main container-->
    <div class="swiper-container swiper-container-mx-negative items-slider-full px-lg-5 pt-3">
      <!-- Additional required wrapper-->
      <div class="swiper-wrapper pb-5">
        <!-- Slides-->
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">House</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>350 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>3</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>2</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$150k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-slide h-auto px-2">
          <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"/><a class="tile-link" href="detail-rooms.html"></a>
                <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();">
                  <svg class="svg-icon text-white">
                    <use xlink:href="#heart-1"> </use>
                  </svg></a></div>
              </div>
              <div class="card-body d-flex align-items-center">
                <div class="w-100">
                  <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                  <p class="text-sm text-secondary card-subtitle mb-2"><i class="fa fa-map-marker text-secondary opacity-4 me-1"></i>San Francisco</p>
                  <p class="text-sm text-muted text-uppercase">Apartment</p>
                  <p class="card-text d-flex justify-content-between text-gray-800 text-sm"><span class="me-1"><i class="fa fa-ruler-combined text-primary opacity-4 text-xs me-1"></i>85 m<sup>2</sup>   </span><span class="me-1"><i class="fa fa-bed text-primary opacity-4 text-xs me-1"></i>2</span><span class="me-1"><i class="fa fa-bath text-primary opacity-4 text-xs me-1"></i>1</span><span><i class="fa fa-tag text-primary opacity-4 text-xs me-1"></i>$65k</span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- If we need pagination-->
      <div class="swiper-pagination"></div>
    </div>
  </div>
</section>
<!-- Our picks section-->
<section class="py-6 bg-gray-100">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-8">
        <p class="subtitle text-primary">Most popular cities</p>
        <h2>What's on our radar</h2>
      </div>
      <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category-3-rooms.html">
        See all cities<i class="fas fa-angle-double-right ms-2"></i></a></div>
    </div>
    <div class="row">
      <div class="d-flex align-items-lg-stretch mb-4 col-lg-8">
        <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(img/photo/photo-1449034446853-66c86144b0ad.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
          <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
            <h3 class="text-shadow text-uppercase mb-0">San Francisco</h3>
          </div>
        </div>
      </div>
      <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
        <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(img/photo/photo-1429554429301-1c7d5ae2d42e.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
          <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
            <h3 class="text-shadow text-uppercase mb-0">Los Angeles</h3>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
        <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(img/photo/photo-1523430410476-0185cb1f6ff9.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
          <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
            <h3 class="text-shadow text-uppercase mb-0">Santa Monica</h3>
          </div>
        </div>
      </div>
      <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
        <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(img/photo/photo-1505245208761-ba872912fac0.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
          <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
            <h3 class="text-shadow text-uppercase mb-0">San Diego</h3>
          </div>
        </div>
      </div>
      <div class="d-flex align-items-lg-stretch mb-4 col-lg-4">
        <div class="card shadow-lg border-0 w-100 border-0 hover-animate" style="background: center center url(img/photo/photo-1519867850-74775a87e783.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
          <div class="d-flex align-items-center h-100 text-white justify-content-center py-6 py-lg-7">
            <h3 class="text-shadow text-uppercase mb-0">Fresno</h3>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="py-6">
  <div class="container">
    <div class="pb-lg-4">
      <p class="subtitle text-secondary">Why us?</p>
      <h2 class="mb-5">Discover the best investment opportunities around you</h2>
    </div>
    <div class="row">
      <div class="col-sm-6 col-lg-4 mb-3 mb-lg-0">
        <div class="px-0 pe-lg-4">
          <div class="icon-rounded mb-3 bg-primary-light">
            <svg class="svg-icon w-2rem h-2rem text-primary">
              <use xlink:href="#destination-map-1"> </use>
            </svg>
          </div>
          <h3 class="h6 text-uppercase">Find the best investment area</h3>
          <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed in</p>
        </div>
      </div>
      <div class="col-sm-6 col-lg-4 mb-3 mb-lg-0">
        <div class="px-0 pe-lg-4">
          <div class="icon-rounded mb-3 bg-secondary-light">
            <svg class="svg-icon w-2rem h-2rem text-secondary">
              <use xlink:href="#real-estate-1"> </use>
            </svg>
          </div>
          <h3 class="h6 text-uppercase">Purchase a property</h3>
          <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pit</p>
        </div>
      </div>
      <div class="col-sm-6 col-lg-4 mb-3 mb-lg-0">
        <div class="px-0 pe-lg-4">
          <div class="icon-rounded mb-3 bg-primary-light">
            <svg class="svg-icon w-2rem h-2rem text-primary">
              <use xlink:href="#pay-1"> </use>
            </svg>
          </div>
          <h3 class="h6 text-uppercase">Profit</h3>
          <p class="text-muted text-sm">His room, a proper human room although a little too small, lay peacefully between its four familiar </p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Divider Section-->
<section>
  <div class="container bg-gray-100 py-6 px-3 px-lg-5 rounded-3 shadow-sm">
    <div class="row">
      <div class="col-lg-6 mb-5 mb-lg-0 text-center text-lg-start">
        <p class="subtitle text-secondary">Start using Directory today</p>
        <p class="text-lg">Directory is the best way to find & discover great local businesses</p>
        <p class="text-muted mb-0">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed in</p>
      </div>
      <div class="col-lg-6 d-flex align-items-center justify-content-center">
        <div class="text-center">
          <p class="mb-2"><a class="btn btn-lg btn-primary" href="#">Create Your Account</a></p>
          <p class="text-muted text-small">It's free! </p>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="py-6">
  <div class="container">
    <div class="row mb-lg-6">
      <div class="col-md-8">
        <p class="subtitle text-secondary">Who are we?</p>
        <h2 class="mb-md-0">Meet our team</h2>
      </div>
      <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="team.html">
        Meet us all<i class="fas fa-angle-double-right ms-2"></i></a></div>
    </div>
    <div class="row">
      <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
        <div class="card border-0 hover-animate bg-transparent"><a class="position-relative" href="#"><img class="card-img-top team-img" src="img/avatar/agent-0.png" alt=""/>
          <div class="team-circle bg-secondary-light"></div></a>
          <div class="card-body team-body text-center">
            <h6 class="card-title">Meredith Goodwin</h6>
            <p class="card-subtitle text-muted text-xs text-uppercase">CEO &amp; Founder    </p>
          </div>
        </div>
      </div>
      <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
        <div class="card border-0 hover-animate bg-transparent"><a class="position-relative" href="#"><img class="card-img-top team-img" src="img/avatar/agent-1.png" alt=""/>
          <div class="team-circle bg-secondary-light"></div></a>
          <div class="card-body team-body text-center">
            <h6 class="card-title">Weeks Garrett</h6>
            <p class="card-subtitle text-muted text-xs text-uppercase">Co-founder    </p>
          </div>
        </div>
      </div>
      <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
        <div class="card border-0 hover-animate bg-transparent"><a class="position-relative" href="#"><img class="card-img-top team-img" src="img/avatar/agent-2.png" alt=""/>
          <div class="team-circle bg-secondary-light"></div></a>
          <div class="card-body team-body text-center">
            <h6 class="card-title">Fisher Bauer</h6>
            <p class="card-subtitle text-muted text-xs text-uppercase">CTO    </p>
          </div>
        </div>
      </div>
      <div class="mb-3 mb-lg-0 col-sm-6 col-lg-3">
        <div class="card border-0 hover-animate bg-transparent"><a class="position-relative" href="#"><img class="card-img-top team-img" src="img/avatar/agent-3.png" alt=""/>
          <div class="team-circle bg-secondary-light"></div></a>
          <div class="card-body team-body text-center">
            <h6 class="card-title">Aguilar Webb</h6>
            <p class="card-subtitle text-muted text-xs text-uppercase">Community    </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Brands Section-->
<section class="py-6 bg-gray-100">
  <div class="container">
    <h5 class="text-center text-uppercase letter-spacing-3 mb-5">As seen on</h5>
    <!-- Brands Slider-->
    <div class="swiper-container brands-slider">
      <div class="swiper-wrapper pb-5">
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-1.svg" alt="Brand 1"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-2.svg" alt="Brand 2"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-3.svg" alt="Brand 3"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-4.svg" alt="Brand 4"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-5.svg" alt="Brand 5"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-6.svg" alt="Brand 6"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-1.svg" alt="Brand 1"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-2.svg" alt="Brand 2"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-3.svg" alt="Brand 3"></a></div>
        <!-- item-->
        <div class="swiper-slide h-auto d-flex align-items-center justify-content-center"><a href="#"><img class="img-fluid w-6rem opacity-5" src="img/brand/brand-4.svg" alt="Brand 4"></a></div>
      </div>
    </div>
  </div>
</section>
<!-- Instagram-->
<section>
  <div class="container-fluid px-0">
    <div class="swiper-container instagram-slider">
      <div class="swiper-wrapper">
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-1.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-2.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-3.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-4.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-5.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-6.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-7.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-8.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-9.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-10.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-11.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-12.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-13.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-14.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-10.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-11.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-12.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-13.jpg" alt=" "></a></div>
        <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="img/instagram/instagram-14.jpg" alt=" "></a></div>
      </div>
    </div>
  </div>
</section>
