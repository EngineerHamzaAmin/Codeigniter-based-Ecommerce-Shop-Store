<style type="text/css">
    .sort {
        list-style: none;
        border: 1px #ccc solid;
        color: #333;
        padding: 10px;
        margin-bottom: 4px;
    }
</style>

<ul id="sortlist">
    <?php
    $this->load->module('Sliders');
    $this->load->module('slides');
    foreach ($query->result() as $row):
        ?>
        <li class="sort" id="<?= $row->id ?>">
            <i class="icon-sort"></i><?= $row->slider_title ?>

            <?php
            $num_items = $this->slides->count_where('block_id', $row->id);
            if ($num_items == 1) {
                $entity = 'Slider';
            } else {
                $entity = 'Sliders';
            }
            ?>
            <a class="btn btn-default" href="<?= base_url() ?>">
                <i class="halflings-icon white zoom-in"></i>
            </a>

            <a class="btn btn-info" href="<?= base_url("sliders/create/$row->id"); ?>">
                <i class="halflings-icon white edit"></i>
            </a>
        </li>

    <?php endforeach; ?>
</ul>