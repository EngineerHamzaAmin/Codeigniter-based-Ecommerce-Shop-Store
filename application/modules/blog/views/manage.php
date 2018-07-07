<h1>Content Management System</h1>

<?= $flash_data;?>

<p style="margin-top: 20px">
    <a href="<?= base_url().'blog/create';?>">
        <button type="button" class="btn btn-primary">Create New Blog Entry</button>
    </a>
</p>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white file-alt"></i><span class="break"></span>Custom Blog</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>Picture</th>
                    <th>Date Published</th>
                    <th>Author</th>
                    <th>Blog Headline</th>
                    <th class="span2">Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                    foreach($query->result() as $row):
                        $this->load->module('timedate');
                        $date_published = $this->timedate->get_nice_date($row->date_published,'mini');
                        $pic_path = str_replace('.','_thumb.',$row->picture);
                        $thumbnail_pic = base_url("blog_pics/$pic_path");
                 ?>
                <tr>
                    <td><img src="<?= $thumbnail_pic?>"></td>
                    <td><?= $date_published?></td>
                    <td><?= $row->author?></td>
                    <td><?= base_url("$row->page_url")?></td>
                    <td class="center"><?= $row->page_title?></td>
                    <td class="center">
                        <a class="btn btn-success" href="<?= base_url("$row->page_url")?>">
                            <i class="halflings-icon white zoom-in"></i>
                        </a>
                        <a class="btn btn-info" href="<?= base_url("blog/create/$row->id");?>">
                            <i class="halflings-icon white edit"></i>
                        </a>
                    </td>
                </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->