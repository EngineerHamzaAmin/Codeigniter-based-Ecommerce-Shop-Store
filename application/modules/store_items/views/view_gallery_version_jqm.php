<?php //echo Modules::run('templates/_draw_breadcrumbs', $breadcrumbs_data);
if (isset($flash)) {
    echo $flash;
}
?>

<script type="text/javascript">
    var myApp = angular.module('myApp',[]);

    myApp.controller('myController',['$scope',function($scope){
        $scope.defaultPic = "<?= $gallery_pics['0']?>";
        $scope.change = function (newPic) {
            $scope.defaultPic = newPic;
        }
    }]);
</script>

<style>
    .ui-bar{
        border: 1px silver solid;
    }
</style>


<h3 style="margin-top: 0px;margin-bottom: 4px;"><?= $item_title?></h3>
<div class="row" ng-controller="myController">

    <div class="ui-grid-d">
        <?php
            $count = 0;
            foreach($gallery_pics as $thumbnail){
                $count++;

                if($count>5){
                    $count=0;
                }

                switch($count){
                    case '1':
                        $block_value = 'a';
                        break;
                    case '2':
                        $block_value = 'b';
                        break;
                    case '3':
                        $block_value = 'c';
                        break;
                    case '4':
                        $block_value = 'd';
                        break;
                    case '5':
                        $block_value = 'e';
                }

                echo '<div class="ui-block-'.$block_value.'"><div class="ui-bar" style="height: 30px;">';
                ?>
                <img ng-click="change('<?= $thumbnail?>')" src="<?= $thumbnail?>" width="100%">
                <?php
                echo '</div></div>';
                }
        ?>

    </div>

    <div style="margin-top: 12px;">
        <img src="{{ defaultPic }}" alt="<?= $item_title ?>" width="100%">
    </div>

    <h2>Our Price: <?= $currency_symbol . $item_price_des ?></h2>
    <div style="clear: both">
        <?= nl2br($item_description); ?>
    </div>
</div>