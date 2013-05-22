{{ if $gimme->article->has_attachments }} 
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == oga }}           
<div class="audio-attachment">
  <h5><i class="icon-headphones"></i> {{ #listen# }}</h5><hr><br>
    <audio src="{{ uri options="articleattachment" }}" width="100%" controls>
  <a href="{{ uri options="articleattachment" }}">{{ #downloadAudioFile# }}</a>
  </audio>
</div><!-- /#audio-attachment -->
{{ elseif $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == flv || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             

  <div class="video-attachment"><!-- read http://diveintohtml5.org/video.html -->
  <h5 id="video-cont-label"><i class="icon-film"></i> {{ #watch# }}</h5><hr>
  video/{{if $gimme->attachment->extension == flv }}flash{{ elseif $gimme->attachment->extension == ogv}}ogg{{ else }}{{ $gimme->attachment->extension }}{{ /if }}
  <div class="flowplayer" data-swf="{{ url static_file='_js/vendor/flowplayer.swf' }}" data-ratio="0.417">
  <video >
    <source src="{{ uri options="articleattachment" }}" type='video/{{if $gimme->attachment->extension == flv }}flash{{ elseif $gimme->attachment->extension == ogv}}ogg{{ else }}{{ $gimme->attachment->extension }}{{ /if }}'>
    <a href="{{ uri options="articleattachment" }}">{{ #download# }} .{{ $gimme->attachment->extension }} file</a>
   </video>
  </div>
</div><!-- /#video-attachment --> 
      
{{ else }}
<div class="attachment">
    <h5><i class="icon-download-alt"></i> {{ #attachment# }}</h5><hr>
    <a href="{{ uri options="articleattachment" }}" class="btn btn-mini btn-red">{{ #download# }} | {{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a>
    <p><em>{{ $gimme->attachment->description }}</em></p>
</div><!-- /.attachment -->
{{ /if }}      
{{ /list_article_attachments }}      
{{ /if }}  
