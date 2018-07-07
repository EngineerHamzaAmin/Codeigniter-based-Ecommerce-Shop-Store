<?php
    foreach ($query->result() as $row):
        $this->load->module('timedate');
        $article_preview = word_limiter($row->page_content,25);
        $pic_path = str_replace('.','_thumb.',$row->picture);
        $thumbnail_pic = base_url("blog_pics/$pic_path");
        $date_published = $this->timedate->get_nice_date($row->date_published,'mini');
        $article_url = base_url("blog/article/$row->page_url");
?>

  <div class="row">
      <div class="col-md-3">
          <img src="<?= $thumbnail_pic?>" class="img-responsive img-thumbnail">
      </div>
      <div class="col-md-9">
          <h4><a href="<?= $article_url?>"><?= $row->page_title?></a></h4>
          <p style="font-size: 0.9em;">
              <?= $row->author?> - 
              <span style="color: #999"><?= $date_published?></span>
          </p>
          <p><?= $article_preview?></p>
      </div>
  </div>
<?php endforeach;?>
