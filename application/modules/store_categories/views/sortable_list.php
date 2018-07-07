<style type="text/css">
    .sort{
        list-style: none;
        border: 1px #ccc solid;
        color: #333;
        padding: 10px;
        margin-bottom: 4px;
    }
</style>

<ul id="sortlist">
    <?php
    $this->load->module('store_categories');
    foreach ($query->result() as $row):
        $num_sub_cats = $this->store_categories->_count_sub_cats($row->id);
        if ($row->parent_cat_id == 0) {
            $parent_cat_title = "&nbsp;";
        } else {
            $parent_cat_title = $this->store_categories->_get_cat_title($row->parent_cat_id);
        }

        ?>
        <li class="sort" id="<?= $row->id?>">
            <i class="icon-sort"></i><?= $row->cat_title ?>

            <?php
            if($num_sub_cats < 1){
                echo $num_sub_cats = '&nbsp;';
            }
            else {
                if($num_sub_cats==1){
                    $entity = 'Category';
                }
                else{
                    $entity = 'Categories';
                }
                ?>
                <a class="btn btn-default" href="<?= base_url("store_categories/manage/$row->id")?>">
                    <i class="halflings-icon white zoom-in"></i>
                    <?= $num_sub_cats.' '.$entity;?>
                </a>

                <a class="btn btn-info" href="<?= base_url("store_categories/create/$row->id");?>">
                    <i class="halflings-icon white edit"></i>
                </a>
                <?php
            }
            ?>
        </li>

    <?php endforeach; ?>
</ul>