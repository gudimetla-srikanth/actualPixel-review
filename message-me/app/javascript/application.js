// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@hotwired/turbo-rails"
import * as jquery from "jquery"
import "semantic-ui"
$(document).on('turbo:load', function() {
  console.log('loaded turbo links')
  $('.ui.dropdown').dropdown()
});
import "channels"

document.addEventListener('keydown',function(event){
  var chatbtn = document.getElementById('chat_btn')
  var key = event.key
  if(key == 'Enter'){
    chatbtn.click()
    var ele = document.getElementById('message')
    ele.scrollTop = ele.scrollHeight
    document.getElementById('chat_inp').value = ''
  }
})
document.addEventListener('DOMContentLoaded',function(){
 var ele = document.getElementById('message')
 ele.scrollTop = ele.scrollHeight
})
