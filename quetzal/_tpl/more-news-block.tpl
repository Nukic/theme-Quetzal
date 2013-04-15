<div class="span8 more-news-tabs">
    <!-- MORE NEWS TABS -->
    <div class="hidden-phone">
        <ul class="nav nav-tabs">
            <h4>More news</h4>
            {{ list_sections}}
            {{ if $gimme->current_list->at_beginning }}
            <li class="active">
                <a href="#tab1" data-toggle="tab">{{ $gimme->section->name}}</a>
            </li>
            {{else}}
            <li><a href="#tab2" data-toggle="tab">{{ $gimme->section->name}}</a></li>
            {{/if}}
            {{/list_sections}}
        </ul>
        <div class="tabWrap">
            <div class="tab-content">
                {{ list_sections }}
                <div class="tab-pane active" id="tab{{ $gimme->current_list->index }}">
                    {{ list_articles length="5" order="byPublishDate desc" }}
                    <div class="article-content">
                        <img class="article-image pull-left" src="http://placehold.it/70x45" >
                        <div class="article-excerpt pull-left">
                            <a href="{{ uri options="article"}}" class="title">
                                {{ $gimme->article->name}}
                            </a>               
                                {{ $gimme->article->full_text|truncate:100:"...":true }}
                        </div>
                        <div class="clearfix"></div>
                        <div class="article-links">
                            <hr>
                            <a href="{{ url options="comments"}}" class="comments-link">{{ $gimme->article->comment_count }} Comments</a> | 
                            <a href="{{ uri options="article"}}" class="red-text negrita-weight">Read more +</a>
                            <span class="article-date pull-right">
                                <time datetime="{{ $gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%MZ" }}">{{ $gimme->article->publish_date|camp_date_format:"%M %e, %Y" }}</time>
                            </span>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    {{ /list_articles }}
                </div>
                {{/list_sections}}
            </div>
        </div>
    </div>
</div>
