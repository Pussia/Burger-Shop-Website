<#import "parts/common.ftlh" as p>

<@p.page>

  <!-- bradcam_area_start -->
  <div class="bradcam_area breadcam_bg">
      <h3>single blog</h3>
  </div>
  <!-- bradcam_area_end -->

   <!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src="/static/${blog.getImagePath()}" alt="">
                  </div>
                  <div class="blog_details">
                     <h2>${blog.getName()}</h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li>
                           <a href="/static/#"><i class="fa fa-user"></i>
                              <#list blog.getTags() as tag>
                                  ${tag.getName()}<#sep>,
                              </#list>
                           </a>
                        </li>
                        <li><a href="/static/#"><i class="fa fa-comments"></i>${blog.getReviewsSize()} Comments</a></li>
                     </ul>
                     <#list blog.getTextForView() as text>
                        <p class="excert">${text}</p>
                     </#list>
                  </div>
               </div>
               <div class="navigation-top">
                  <div class="d-sm-flex justify-content-between text-center">
                     <ul class="social-icons">
                        <li><a href="/static/#"><i class="fa fa-facebook-f"></i></a></li>
                        <li><a href="/static/#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="/static/#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="/static/#"><i class="fa fa-behance"></i></a></li>
                     </ul>
                  </div>
                  <div class="navigation-area">
                     <div class="row">
                        <div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                           <#if prev_blog.getId()??>
                              <div class="thumb">
                                 <a href="/blog/${prev_blog.getId()}">
                                    <img style="width: 60px; height: 60px;" class="img-fluid" src="/static/${prev_blog.getImagePath()}" alt="">
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="/blog/${prev_blog.getId()}">
                                    <span class="lnr text-white ti-arrow-left"></span>
                                 </a>
                              </div>
                              <div class="detials">
                                 <p>Prev Post</p>
                                 <a href="/blog/${prev_blog.getId()}">
                                    <h4>${prev_blog.getShortName()}</h4>
                                 </a>
                              </div>
                           </#if>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                           <#if next_blog.getId()??>
                              <div class="detials">
                                 <p>Next Post</p>
                                 <a href="/blog/${next_blog.getId()}">
                                    <h4>${next_blog.getShortName()}</h4>
                                 </a>
                              </div>
                              <div class="arrow">
                                 <a href="/blog/${next_blog.getId()}">
                                    <span class="lnr text-white ti-arrow-right"></span>
                                 </a>
                              </div>
                              <div class="thumb">
                                 <a href="/blog/${next_blog.getId()}">
                                    <img style="width: 60px; height: 60px;" class="img-fluid" src="/static/${next_blog.getImagePath()}" alt="">
                                 </a>
                              </div>
                           </#if>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="blog-author">
                  <div class="media align-items-center">
                     <img src="/static/img/blog/author.png" alt="">
                     <div class="media-body">
                        <a href="/static/#">
                           <h4>Harvard milan</h4>
                        </a>
                        <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he
                           our dominion twon Second divided from</p>
                     </div>
                  </div>
               </div>
               <div class="comments-area">
                  <h4>${blog.getReviewsSize()} Comments</h4>
                  <#list blog.getReviews() as review>
                     <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                           <div class="user justify-content-between d-flex">
                              <div class="thumb">
                                 <img src="/static/${review.getCustomer().getImagePath()}" alt="">
                              </div>
                              <div class="desc">
                                 <p class="comment">
                                    ${review.getMessage()}
                                 </p>
                                 <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                       <h5>
                                          <a href="/static/#">${review.getCustomer().getName()}</a>
                                       </h5>
                                       <p class="date">${review.getDate()}</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </#list>
               </div>
               <div class="comment-form">
                  <h4>Leave a Reply</h4>
                  <form class="form-contact comment_form" action="/blog/${blog.getId()}/add" method="POST" id="commentForm">
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9"
                                 placeholder="Write Comment"></textarea>
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                     </div>
                  </form>
               </div>
            </div>
            <div class="col-lg-4">
               <div class="blog_right_sidebar">
                  <aside class="single_sidebar_widget popular_post_widget">
                     <h3 class="widget_title">Recent Post</h3>
                     <#list recent_blogs as blog>
                       <div class="media post_item">
                          <img src="/static/${blog.getImagePath()}" alt="post" style="width: 80px; height: 80px;">
                          <div class="media-body">
                             <a href="/blog/${blog.getId()}">
                                <h3>${blog.getShortName()}</h3>
                             </a>
                             <p>${blog.getDate()}</p>
                          </div>
                       </div>
                     </#list>
                  </aside>
                  <aside class="single_sidebar_widget tag_cloud_widget">
                     <h4 class="widget_title">Tag Clouds</h4>
                     <ul class="list">
                         <#list tags as tag>
                            <li>
                               <a href="/static/#">${tag.getName()}</a>
                            </li>
                         </#list>
                     </ul>
                  </aside>
                  <aside class="single_sidebar_widget instagram_feeds">
                     <h4 class="widget_title">Instagram Feeds</h4>
                     <ul class="instagram_row flex-wrap">
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_5.png" alt="">
                           </a>
                        </li>
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_6.png" alt="">
                           </a>
                        </li>
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_7.png" alt="">
                           </a>
                        </li>
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_8.png" alt="">
                           </a>
                        </li>
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_9.png" alt="">
                           </a>
                        </li>
                        <li>
                           <a href="/static/#">
                              <img class="img-fluid" src="/static/img/post/post_10.png" alt="">
                           </a>
                        </li>
                     </ul>
                  </aside>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->
</@p.page>