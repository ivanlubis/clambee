<?php if (isset($redirect)) : ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php exit; endif; ?>
<div class="col-md-12">
    <table class="table cart_table">
        <thead>
            <tr>
                <th>Description</th>
                <th></th>
                <th>Retail</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($products as $product) : ?>
            <tr>
                <td class="cart-catalog-item">
                    <?php if ($product['thumb'] != '') : ?>
                    <a href="<?php echo $product['href']; ?>">
                        <img src="<?php echo $product['thumb']; ?>"/>
                    </a>
                    <?php endif; ?>
                </td>
                <td>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    <div>
                        <?php foreach ($product['option'] as $option) : ?>
                        - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                        <?php endforeach; ?>
                        <?php if($product['recurring']): ?>
                        - <small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
                        <?php endif; ?>
                    </div>
                </td>
                <td><span class="retail"><?php echo $product['price']; ?></span></td>
                <td><span class="in-stock"><?php echo $product['quantity']; ?></span></td>
                <td><em class="total"><?php echo $product['total']; ?></em></td>
            </tr>
            <?php endforeach; ?>
            <?php foreach ($vouchers as $voucher) : ?>
            <tr>
                <td class="cart-catalog-item">&nbsp;</td>
                <td><?php echo $voucher['description']; ?></td>
                <td>&nbsp;</td>
                <td><span class="retail"><?php echo $voucher['amount']; ?></span></td>
                <td><span class="in-stock">1</span></td>
                <td><span class="total"><?php echo $voucher['amount']; ?></span></td>
            </tr>
            <?php endforeach; ?>
            <?php foreach ($totals as $total) { ?>
            <tr>
                <td colspan="4" class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
                <td><span class="total"><strong><?php echo $total['text']; ?></strong></span></td>
            </tr>
            <?php } ?>
            <tr>
                <td colspan="5"><div class="payment"><?php echo $payment; ?></div></td>
            </tr>
        </tbody>
    </table>
</div>



<?php /**
<?php if (!isset($redirect)) { ?>
<div class="checkout-product">
  <table>
    <thead>
      <tr>
        <td class="name"><?php echo $column_name; ?></td>
        <td class="model"><?php echo $column_model; ?></td>
        <td class="quantity"><?php echo $column_quantity; ?></td>
        <td class="price"><?php echo $column_price; ?></td>
        <td class="total"><?php echo $column_total; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>  
      <?php if($product['recurring']): ?>
        <tr>
            <td colspan="6" style="border:none;"><image src="catalog/view/theme/default/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                <strong><?php echo $text_recurring_item ?></strong>
                <?php echo $product['profile_description'] ?>
            </td>
        </tr>
      <?php endif; ?>
      <tr>
        <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?>
          <?php if($product['recurring']): ?>
          <br />
          &nbsp;<small><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
          <?php endif; ?>
        </td>
        <td class="model"><?php echo $product['model']; ?></td>
        <td class="quantity"><?php echo $product['quantity']; ?></td>
        <td class="price"><?php echo $product['price']; ?></td>
        <td class="total"><?php echo $product['total']; ?></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="name"><?php echo $voucher['description']; ?></td>
        <td class="model"></td>
        <td class="quantity">1</td>
        <td class="price"><?php echo $voucher['amount']; ?></td>
        <td class="total"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td colspan="4" class="price"><b><?php echo $total['title']; ?>:</b></td>
        <td class="total"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
</div>
<div class="payment"><?php echo $payment; ?></div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>
**/?>