// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener('DOMContentLoaded',()=>{
  document.addEventListener('click',()=>{
    var ele = document.getElementById('err')
    ele.style="display:none"
  })
})
