<%@ page import="com.lotte.products.dto.ProductCategoryDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: BTC-N21
  Date: 2022-07-19
  Time: 오후 2:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/productdetail.css">
    <% List<ProductCategoryDto> dto = (List<ProductCategoryDto>)request.getAttribute("list"); %>
    <style>

        .lastview-menu {
            margin-top: 10px;
            text-align: center;
            background-color: #fff
        }

        .lastview-menu-button img {
            border: 1px solid #e3e3e3;
            vertical-align: top
        }

        .lastview-menu-wrapper {
            border-left: 1px solid #d5d5d5;
            border-right: 1px solid #d5d5d5;
            padding: 10px 0
        }

        .lastview-menu-title {
            font-size: 12px;
            margin-bottom: 10px
        }

        .lastview-menu-item-image {
            width: 60px;
            height: 80px
        }

        .lastview-menu-list-wrapper {
            height: 300px;
            overflow: hidden;
            position: relative;
            padding: 5px 27px;
            position: relative
        }

        .lastview-menu-list {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            margin: auto;
            width: 80%
        }

        .lastview-menu-item {
            margin-bottom: 6px
        }

        .lastview-menu-item-name {
            display: block;
            -ms-text-overflow: ellipsis;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
            height: 13px
        }

        .kurly-partner-item {
            border: 1px solid #adadad;
            height: 555px;
            color: #525252;
            margin-bottom: 50px
        }

        .kurly-partner-item:after {
            display: block;
            content: '';
            clear: both
        }

        .kurly-partner-item-figure {
            float: left;
            width: 46.6%
        }

        .kurly-partner-item-image {
            display: block;
            height: 100%
        }

        .kurly-partner-item-content {
            float: left;
            width: 53.4%;
            margin-top: 60px;
            text-align: center
        }

        .kurly-partner-item-subject {
            font-size: 30px;
            letter-spacing: -.15em;
            line-height: 1.5
        }

        .kurly-partner-item-title {
            font-size: 26px;
            font-weight: 900;
            letter-spacing: -.1em;
            margin-bottom: 10px
        }

        .kurly-partner-item-description {
            font-size: 17px;
            letter-spacing: -.1em;
            line-height: 1.35
        }

        .kurly-partner-item-description:before {
            display: block;
            margin: 0 auto;
            width: 20px;
            height: 2px;
            background-color: #525252;
            content: '';
            margin-bottom: 10px
        }

        .kurly-partner-item-logo {
            background-image: url(https://res.kurly.com/images/common/old/icon/bg-partner-logo.png);
            background-repeat: no-repeat;
            background-position: 50% 50%;
            height: 200px;
            line-height: 200px;
            margin-top: 30px
        }

        .kurly-partner-item-logo img {
            width: 140px;
            vertical-align: middle
        }

        .kurly-partner-item-logo-right {
            margin-left: 75px
        }

        .goods-add-product {
            position: relative
        }

        .goods-add-product-title {
            font-size: 13px;
            font-weight: 900;
            line-height: 1.8
        }

        .goods-add-product-title:before {
            width: 20px;
            height: 5px;
            background-color: #000;
            display: block;
            content: ''
        }

        .goods-add-product-wrapper {
            position: relative;
            margin-top: 20px
        }

        .goods-add-product-move {
            position: absolute;
            text-indent: -9999px;
            background-color: transparent;
            border: 0;
            height: 100%;
            top: 0;
            bottom: 0;
            margin: auto;
            background-repeat: no-repeat;
            z-index: 3;
            width: 30px;
            background-position: 50% 50%
        }

        .goods-add-product-move.goods-add-product-move-right {
            right: 0;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/slide-sub-right-button-black.png);
            background-position: right
        }

        .goods-add-product-move.goods-add-product-move-left {
            left: 0;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/slide-sub-left-button-black.png);
            background-position: left
        }

        .goods-add-product-list-wrapper {
            position: relative;
            overflow: hidden;
            width: 940px;
            margin: 0 auto;
            height: 350px
        }

        .goods-add-product-list {
            width: 10000%;
            position: absolute;
            left: 0;
            top: 0;
            height: 100%
        }

        .goods-add-product-item {
            float: left;
            width: 180px;
            height: 100%;
            margin-right: 10px;
            border: 1px solid #ddd
        }

        .goods-add-product-item-figure {
            position: relative;
            height: 230px;
            overflow: hidden
        }

        .goods-add-product-item-figure a {
            display: block
        }

        .goods-add-product-item-image {
            width: 100%;
            height: 100%
        }

        .goods-add-product-item-content {
            height: 120px
        }

        .goods-add-product-item-content-wrapper {
            padding: 10px;
            position: relative;
            min-height: 75px
        }

        .goods-add-product-item-name {
            font-size: 14px;
            font-weight: 700;
            color: #4c4c4c;
            line-height: 18px
        }

        .goods-add-product-item-price {
            font-size: 14px;
            position: absolute;
            left: 10px;
            bottom: 10px
        }

        .goods-add-product-item-oriprice {
            color: #999
        }

        .goods-add-product-item-option {
            background-color: #f6f7f7;
            height: 43px;
            text-align: center
        }

        .goods-add-product-item-option * {
            display: inline-block;
            text-align: center
        }

        .goods-add-product-item-option:after {
            display: inline-block;
            height: 100%;
            vertical-align: middle;
            content: ''
        }

        .goods-cart-package-content {
            margin: 10px 0
        }

        .goods-cart-package-title {
            color: #5f0080;
            font-size: 14px;
            letter-spacing: -.1em
        }

        .goods-cart-package-item {
            overflow: hidden;
            margin-top: 5px;
            font-size: 12px;
            color: #777
        }

        .ask-layer-wrapper {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 9999
        }

        .ask-layer-background {
            display: block;
            width: 100%;
            height: 100%;
            background-color: #000;
            position: absolute;
            left: 0;
            top: 0;
            opacity: .5
        }

        .ask-alert-window {
            position: absolute;
            z-index: 9999;
            background-color: #fff;
            top: 0;
            bottom: 0;
            right: 0;
            left: 0;
            margin: auto
        }

        .ask-alert-window.ask-alert-type-option {
            width: 420px
        }

        .ask-alert-window.ask-alert-type-message {
            width: 490px;
            height: 280px
        }

        .ask-alert-window.ask-alert-type-process {
            width: 685px
        }

        .ask-alert-wrapper {
            position: relative;
            margin: 25px
        }

        .ask-alert-close-button {
            width: 20px;
            height: 20px;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-close-button.png);
            text-indent: -9999px;
            position: absolute;
            right: 0;
            top: 0;
            background-color: transparent;
            border: 0;
            background-repeat: no-repeat
        }

        .ask-alert-header {
            font-size: 14px;
            font-weight: 700;
            letter-spacing: -.025em;
            color: #5f0080;
            padding-bottom: 20px;
            border-bottom: 1px solid #b2b2b2;
            margin-bottom: 25px
        }

        .ask-alert-type-message .ask-alert-content {
            display: table;
            width: 100%
        }

        .ask-alert-message {
            height: 60px;
            display: table-cell;
            vertical-align: middle;
            font-size: 13px;
            line-height: 1.5;
            text-align: center;
            width: 100%
        }

        .ask-alert-footer {
            text-align: center;
            background-color: #f5f5f5;
            padding: 30px 0
        }

        .ask-alert-footer .styled-button {
            font-size: 13px;
            width: 150px;
            height: 45px;
            line-height: 45px
        }

        .cart-layer-header {
            padding-bottom: 10px;
            border-bottom: 1px solid #ececec;
            margin-bottom: 15px;
            font-size: 14px
        }

        .goods-cart-list:after {
            display: block;
            content: '';
            clear: both
        }

        .goods-cart-item {
            width: 150px;
            float: left;
            margin-left: 11px
        }

        .goods-cart-item:first-child {
            margin-left: 0
        }

        .goods-cart-item-image {
            height: 190px
        }

        .goods-cart-item-content {
            margin-top: 10px
        }

        .goods-cart-item-name {
            color: #5f0080;
            font-size: 14px
        }

        .goods-cart-item-price {
            color: #000;
            font-size: 15px;
            font-weight: 700;
            line-height: 1.4
        }

        .goods-cart-item-ea {
            color: #757575
        }

        .goods-cart-product-cell {
            text-align: left;
            vertical-align: middle;
            padding: 20px 0
        }

        .styled-table.order_table input[type=checkbox] {
            width: 16px;
            height: 16px
        }

        .goods-cart-product-name {
            width: 440px;
            font-size: 16px;
            color: #000;
            margin-bottom: 15px;
            font-weight: 700;
            line-height: 20px;
            letter-spacing: -.045em
        }

        .goods-cart-price-value {
            display: block;
            padding-top: 16px;
            color: #57297b;
            font-size: 20px
        }

        .goods-cart-result {
            border-bottom: 1px solid #5f0080;
            padding: 17px 0;
            text-align: right;
            font-size: 14px;
            color: #000;
            position: relative
        }

        .goods-cart-delivery {
            position: absolute;
            top: 0;
            bottom: 0;
            margin: auto;
            left: 0
        }

        .goods-cart-delivery:after {
            display: inline-block;
            content: '';
            vertical-align: middle;
            height: 100%
        }

        .goods-cart-settleprice .goods-cart-price-value {
            display: inline-block;
            padding-left: 40px;
            padding-right: 15px
        }

        .goods-cart-button-group:after {
            display: block;
            content: '';
            clear: both
        }

        .goods-cart-button-group {
            margin: 10px 0 0
        }

        .goods-cart-button-area {
            float: left;
            width: 50%;
            text-align: right
        }

        .goods-cart-button-area:first-child {
            text-align: left
        }

        .goods-cart-button-area .styled-button {
            font-size: 13px;
            width: 150px;
            height: 40px;
            line-height: 40px
        }

        .goods-cart-warning-message {
            color: red;
            text-align: center;
            font-size: 13px;
            margin-top: 25px;
            line-height: 20px
        }

        .txt_black {
            margin-top: 15px;
            color: #404040!important
        }

        .goods-view-sns-area {
            padding: 10px 0
        }

        .goods-view-wrapper {
            padding-bottom: 40px
        }

        .goods-view-wrapper:after {
            display: block;
            content: '';
            clear: both
        }

        .goods-view-figure {
            width: 420px;
            position: relative;
            float: left;
            border: 1px solid #ddd
        }

        .goods-view-figure-image {
            display: block;
            width: 100%
        }

        .goods-view-form {
            margin-left: 50px;
            width: 540px;
            float: left;
            font-family: noto sans;
            font-size: 13px
        }

        .goods-view-form-header {
            position: relative;
            padding: 10px 44px 20px 0
        }

        .goods-view-form-header .btn_share {
            position: absolute;
            right: 0;
            top: 8px;
            border: 0;
            background: 0 0
        }

        .goods-view-form-header .btn_share img {
            width: 44px;
            height: 44px
        }

        .goods-view-name {
            font-size: 20px;
            font-weight: 700;
            color: #000
        }

        .goods-view-shortdesc {
            margin-top: 7px;
            line-height: 1.5;
            font-size: 14px;
            color: #666
        }

        .goods-view-form-table-wrapper {
            border-bottom: 1px solid #f5f5f5
        }

        .goods-view-form-table {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
            border-spacing: 0;
            border-top: 1px solid #f5f5f5
        }

        .goods-view-form-table:first-child {
            border-top: 0
        }

        .goods-view-form-table tr:first-child th,.goods-view-form-table tr:first-child td {
            padding-top: 20px;
            vertical-align: text-top
        }

        .goods-view-form-table-heading {
            font-weight: 400;
            text-align: left;
            width: 24%;
            color: #666
        }

        .goods-view-form-table .goods-view-form-table-heading.goods_view_heading_num {
            vertical-align: middle
        }

        .goods-view-form-table-heading img {
            margin-left: 5px;
            vertical-align: middle
        }

        .goods-view-form-table-cell {
            text-align: left;
            color: #333
        }

        .goods-view-form-table-cell .txt_purple {
            display: block;
            margin-top: 5px;
            color: #5f0080;
            font-weight: 400;
            font-size: 11px
        }

        .goods-view-form-table-cell.ex-line-type {
            line-height: 16px
        }

        .goods-view-form-table-heading,.goods-view-form-table-cell {
            padding: 0 0 20px 10px;
            font-size: 13px;
            line-height: 1.3
        }

        .goods-view-form-price .goods-view-form-table-heading {
            vertical-align: top
        }

        .goods-view-form-price .goods-view-form-table-cell {
            color: #000;
            font-weight: 700
        }

        .goods-view-form-price .goods-view-form-table-cell .goods_cost {
            font-weight: 400;
            color: #dddfe1
        }

        .package_type {
            vertical-align: top
        }

        .goods-view-total-price {
            font-size: 13px;
            color: #333;
            font-weight: 400;
            margin: 27px 8px 36px 0;
            text-align: right;
            letter-spacing: 0
        }

        .goods-view-total-price .total_price {
            font-size: 32px;
            font-weight: 800;
            padding: 0 4px 0 10px
        }

        .goods-view-total-price .total_price_won {
            font-size: 20px;
            font-weight: 800
        }

        .goods-view-infomation {
            margin-top: 50px
        }

        .goods-view-tab.fixed {
            position: fixed;
            left: 0;
            top: 55px;
            width: 100%;
            min-width: 1010px;
            padding-right: 40px;
            z-index: 299;
            box-sizing: border-box
        }

        .goods-view-infomation-tab-group {
            display: flex;
            flex-direction: row;
            width: 1010px;
            margin: 0 auto
        }

        .goods-view-infomation-tab {
            display: flex;
            flex: 1;
            vertical-align: top
        }

        .goods-view-infomation-tab:first-child .goods-view-infomation-tab-anchor {
            border-left: 1px solid #eee
        }

        .goods-view-infomation-tab-anchor {
            flex: 1;
            position: relative;
            top: 1px;
            height: 60px;
            line-height: 59px;
            text-align: center;
            display: block;
            color: #666;
            font-size: 16px;
            font-weight: 700;
            letter-spacing: -.3px;
            font-family: noto sans;
            background-color: #fafafa;
            border: 1px solid #eee;
            border-left: none
        }

        .goods-view-infomation-tab-anchor span {
            font-size: 14px;
            font-weight: 400;
            color: #999
        }

        .goods-view-infomation-tab-anchor.__active {
            background-color: #fff;
            color: #5f0080;
            border-bottom: 0
        }

        .goods-view-infomation-tab-anchor.__active span {
            color: #5f0080
        }

        .goods-view-infomation-tab-anchor .count_review {
            position: relative;
            top: -1px
        }

        .view_info .tit_info {
            color: #5f0080
        }

        .view_info .list_info {
            vertical-align: top
        }

        .view_info .list_info li {
            margin-top: 6px
        }

        .goods-view-infomation-content {
            padding-top: 40px;
            min-height: 500px;
            margin-bottom: 50px
        }

        .goods-view-infomation-content.__active {
            display: block
        }

        .goods-view-infomation-board {
            width: 100%
        }

        #goods-infomation,#goods-review,#goods-qna {
            padding-top: 100px;
            margin-bottom: 0
        }

        #goods-review {
            min-height: 850px
        }

        .goods-view-form-button:after {
            display: block;
            content: '';
            clear: both
        }

        .goods-view-form-button .styled-button {
            width: 32.584%;
            margin-left: 1.1235%;
            float: left;
            line-height: 49px;
            border: 1px solid #5f0080
        }

        .goods-view-form-button .styled-button:first-child {
            margin-left: 0
        }

        .goods-view-form-button.goodsview_cart .styled-button:first-child {
            margin-left: 0
        }

        .goods-view-form-button .styled-button.goods-direct-buy {
            width: 271px;
            background: #ddd;
            color: #fff
        }

        .na_buy_mobile,.na_option_mobile {
            margin: 8px 0;
            color: #e84f4f;
            font-size: 14px
        }

        .na_buy_cart {
            margin: 8px 0;
            color: #e84f4f;
            font-size: 12px
        }

        .na_order_mobile {
            margin-top: 30px;
            color: #e84f4f;
            font-size: 14px
        }

        .styled-button.goods-soldout {
            width: 268px;
            opacity: .5
        }

        .styled-button.goods-soldout:hover {
            background: #fff;
            color: #5f0080;
            cursor: initial
        }

        .goods-view-flow-cart .styled-button.goods-cart-type {
            width: 50%;
            background-position: 173px
        }

        .goods-view-flow-cart .styled-button.goods-cart-type:hover {
            background-position: 173px
        }

        .goods-view-flow-cart .styled-button.goods-direct-buy {
            width: 50%
        }

        .goods-view-flow-cart .styled-button.goods-heart-type {
            width: 23.804%;
            background-position: 56px
        }

        .goods-view-flow-cart .styled-button.goods-heart-type:hover {
            background-position: 56px
        }

        .goods-view-flow-cart .styled-button.goods-alarm-type {
            width: 23.5%;
            background-position: 56px
        }

        .goods-view-flow-cart .styled-button.goods-alarm-type span {
            background-position: 56px
        }

        .goods-view-flow-cart .styled-button.goods-alarm-type.desable-type span {
            background-position: 56px
        }

        .goods-view-flow-cart .styled-button.goods-alarm-type.desable-type span:hover {
            background-position: 56px
        }

        .goods-view-flow-cart {
            display: none;
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            border-top: 2px solid #5f0080;
            padding-top: 20px;
            background-color: #fff;
            z-index: 100
        }

        .goods-view-flow-cart.__active {
            display: block
        }

        .goods-view-flow-cart-wrapper {
            width: 890px;
            margin: 0 auto;
            position: relative
        }

        .goods-view-show-option-button {
            text-align: center;
            width: 170px;
            height: 48px;
            background-color: #5f0080;
            position: absolute;
            right: 0;
            top: -70px;
            border: 0
        }

        .goods-view-show-option-button-value {
            color: #fff;
            font-size: 14px;
            padding-left: 20px;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-arrow-bottom-white.png);
            background-repeat: no-repeat;
            background-position: left center
        }

        .goods-view-show-option-button.__active .goods-view-show-option-button-value {
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-arrow-top-white.png)
        }

        .goods-view-flow-cart-content {
            display: none;
            padding-bottom: 20px;
            font-family: noto sans
        }

        .goods-view-flow-cart-content.__active {
            display: block
        }

        .goods-view-order-table {
            border: 1px solid #dedede;
            background-color: #f9f9f9;
            padding: 20px 30px 15px;
            margin-bottom: 15px
        }

        .goods-view-order-item {
            margin-top: 20px;
            position: relative
        }

        .goods-view-order-item:first-child {
            margin-top: 0
        }

        .goods-view-order-item:after {
            display: block;
            content: '';
            clear: both
        }

        .goods-view-order-item-name {
            width: 50%;
            float: left;
            font-weight: 400;
            line-height: 15px
        }

        .goods-view-order-item-price,.goods-view-order-item-ea {
            width: 20%;
            float: left
        }

        .goods-view-order-item-price {
            text-align: right;
            font-size: 14px;
            line-height: 20px
        }

        .goods-view-order-item-delete {
            border: 0;
            background-color: transparent;
            background-image: url(https://res.kurly.com/images/common/old/icon/btn_delete.gif);
            width: 11px;
            height: 11px;
            text-indent: -9999px;
            position: absolute;
            right: 0;
            top: 0;
            bottom: 0;
            margin: auto
        }

        .goods-view-order-item-ea {
            text-align: center;
            min-height: 1px;
            width: 20%;
            margin-left: 30px
        }

        .goods-view-order-result {
            padding-top: 10px;
            border-top: 1px solid #dedede;
            padding-right: 25px;
            font-size: 16px;
            text-align: right;
            margin-top: 15px;
            letter-spacing: 0
        }

        .goods-view-order-result .txt_purple {
            display: block;
            margin-top: 5px;
            color: #514859;
            font-weight: 400;
            font-size: 11px;
            text-align: right
        }

        .goods-view-order-total-price {
            color: #5f0080;
            font-weight: 700
        }

        .goods-list-position {
            padding: 20px 40px 10px;
            text-align: right
        }

        .__slide-wrapper {
            position: relative;
            overflow: hidden
        }

        .__slide-mover {
            position: absolute;
            left: 0;
            width: 10000%;
            height: 100%
        }

        .__slide-item {
            float: left;
            height: 100%
        }

        .bnr_header {
            position: relative;
            min-width: 1050px;
            text-align: center;
            line-height: 42px;
            font-size: 14px
        }

        .bnr_header a {
            display: block;
            height: 42px;
            background-color: #5f0080;
            color: #fff
        }

        .bnr_header .bnr_arr {
            display: inline-block;
            width: 42px;
            height: 42px;
            vertical-align: top
        }

        .bnr_header .bnr_top {
            position: absolute;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 0
        }

        .bnr_header .inner_top_close {
            position: relative;
            width: 1050px;
            height: 100%;
            margin: 0 auto
        }

        .bnr_header .btn_top_bnr {
            background-image: url(https://res.kurly.com/pc/ico/1908/ico_close_fff_42x42.png);
            width: 42px;
            height: 42px;
            background-color: transparent;
            border: 0;
            text-indent: -9999px;
            position: absolute;
            bottom: 0;
            right: -15px
        }

        .bnr_header.bnr_top_friend a {
            background-color: #fff;
            color: #333
        }

        .bnr_header.bnr_top_friend b {
            color: #5f0080
        }

        .bnr_header.bnr_top_friend .bnr_top {
            border-bottom: 1px solid #f4f4f4
        }

        .bnr_header.bnr_top_friend .btn_top_bnr {
            background-image: url(https://res.kurly.com/pc/ico/1908/ico_close_333_42x42.png)
        }

        .top-navigation {
            min-width: 1060px
        }

        .top-navigation-menu {
            text-align: right
        }

        .top-navigation-menu-item {
            display: inline-block;
            position: relative;
            padding-left: 18px;
            padding-bottom: 4px;
            padding-top: 4px;
            letter-spacing: 0
        }

        .top-navigation-menu-item:before {
            content: '';
            display: block;
            height: 11px;
            background-color: #ccc;
            width: 1px;
            position: absolute;
            left: 6px;
            top: 0;
            bottom: 0;
            margin: auto
        }

        .top-navigation-menu-item:first-child:before {
            display: none
        }

        .top-navigation-anchor {
            display: block;
            font-size: 12px;
            color: #404040;
            padding: 4px 0;
            border: 1px solid transparent;
            font-family: nanum gothic
        }

        .top-navigation-anchor.top-navigation-login-button {
            border: 1px solid #dcdbdb;
            border-radius: 2px;
            padding-left: 15px;
            padding-right: 4px;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-login-button.png);
            background-repeat: no-repeat;
            background-position: 3px 50%
        }

        .top-navigation-anchor.top-navigation-cart-button {
            padding-left: 18px;
            background-image: url(https://res.kurly.com/pc/etc/old/images/common/icon-cart-button.png);
            background-repeat: no-repeat;
            background-position: 0 50%
        }

        .top-navigation-submenu {
            display: none;
            position: absolute;
            width: 103px;
            left: 10px;
            top: 30px;
            text-align: left;
            border: 1px solid #ccc;
            background-color: #fff;
            z-index: 305;
            white-space: nowrap
        }

        .top-navigation-menu-item:hover .top-navigation-submenu {
            display: block
        }

        .top-navigation-submenu-item a {
            display: block;
            padding: 6px 8px
        }

        .top-navigation-submenu-item a:hover {
            background-color: #ddd
        }

        @media only screen and (-webkit-min-device-pixel-ratio: 1.5),only screen and (min-device-pixel-ratio:1.5),only screen and (min-resolution:1.5dppx) {
            .bnr_header .btn_top_bnr {
                background-image:url(https://res.kurly.com/pc/ico/1908/ico_close_fff_84x84.png);
                background-size: 42px 42px
            }

            .bnr_header.bnr_top_friend .btn_top_bnr {
                background-image: url(https://res.kurly.com/pc/ico/1908/ico_close_333_84x84.png);
                background-size: 42px 42px
            }
        }

        #footer {
            font-family: noto sans;
            letter-spacing: 0
        }

        #footer strong {
            font-weight: 700
        }

        #footer strong.emph {
            color: #5f0080
        }

        .week_tab {
            width: 100%;
            margin-top: 70px
        }

        .week_tab ul {
            overflow: hidden
        }

        .week_tab li {
            float: left;
            width: 25%;
            height: 50px;
            background: #979998;
            line-height: 50px;
            text-align: center
        }

        .week_tab li.on {
            background: #c62127
        }

        .week_tab li a {
            display: block;
            width: 100%;
            height: 100%;
            color: #fff;
            font-size: 20px;
            border: 1px solid #fff
        }

        .whykurly_area {
            font-family: noto sans;
            letter-spacing: 0
        }

        .whykurly_area .ico_area {
            display: block;
            height: 57px;
            margin: 0 auto;
            background: url(https://res.kurly.com/images/common/old/icon/whykurly_package.png) no-repeat
        }

        .whykurly_area .ico_area.whykurly-ico-bag {
            width: 40px;
            background-position: 0 center
        }

        .whykurly_area .ico_area.whykurly-ico-cart {
            width: 56px;
            background-position: -40px top
        }

        .whykurly_area .ico_area.whykurly-ico-close {
            width: 39px;
            background-position: -96px 3px
        }

        .whykurly_area .ico_area.whykurly-ico-document {
            width: 41px;
            background-position: -135px top
        }

        .whykurly_area .ico_area.whykurly-ico-gift {
            width: 48px;
            background-position: -176px top
        }

        .whykurly_area .ico_area.whykurly-ico-hands {
            width: 55px;
            background-position: -224px 13px
        }

        .whykurly_area .ico_area.whykurly-ico-phone {
            width: 28px;
            background-position: -279px top
        }

        .whykurly_area .ico_area.whykurly-ico-respond {
            width: 48px;
            background-position: -307px 5px
        }

        .whykurly_area .ico_area.whykurly-ico-truck {
            width: 55px;
            background-position: -355px top
        }

        .whykurly_area .ico_area.whykurly-ico-truck-01 {
            width: 54px;
            background-position: -410px 17px
        }

        .whykurly_area .ico_area.whykurly-ico-women {
            width: 37px;
            background-position: -464px center
        }

        .whykurly_area {
            width: 1000px;
            margin: 0 auto;
            color: #000;
            letter-spacing: -.045em
        }

        .whykurly_area .row {
            padding: 88px 0;
            border-top: 1px solid #d4d3d3
        }

        .whykurly_area .row:first-child {
            border-top: 0;
            padding-top: 44px
        }

        .whykurly_area .customer-center {
            padding-top: 73px
        }

        .whykurly_area .tit_whykurly {
            display: block;
            font-size: 33px;
            font-weight: 500;
            color: #666;
            text-align: center
        }

        .whykurly_area .tit_whykurly span {
            display: block;
            width: 29px;
            height: 3px;
            margin: 15px auto;
            background: #707070
        }

        .whykurly_area .why-kurly .col {
            width: 315px;
            display: inline-block;
            margin: 43px 0 0 10px;
            vertical-align: top
        }

        .whykurly_area .why-kurly .col:first-child {
            margin-left: 0
        }

        .whykurly_area .why-kurly .col .icon {
            display: block;
            width: 100%;
            text-align: center
        }

        .whykurly_area .why-kurly .col .icon img {
            width: 40px;
            height: 40px
        }

        .whykurly_area .why-kurly .col .info {
            display: block
        }

        .whykurly_area .why-kurly .col .info .title {
            color: #5f0080;
            font-weight: 600;
            display: block;
            font-size: 18px;
            text-align: center;
            line-height: 27px;
            margin-top: 10px
        }

        .whykurly_area .why-kurly .col .info .desc {
            display: block
        }

        .whykurly_area .why-kurly .col .info .desc p {
            display: block;
            margin-top: 22px;
            color: #333;
            padding: 0;
            font-size: 16px;
            font-weight: 100;
            line-height: 1.56;
            letter-spacing: -.4px;
            text-align: center
        }

        .whykurly_area .why-kurly .col .info .desc .etc {
            display: block;
            width: 100%;
            height: 19px;
            margin: 16px 0;
            font-size: 13px;
            font-weight: 300;
            letter-spacing: -.29px;
            text-align: center;
            color: #666
        }

        .whykurly_area .txt_area {
            overflow: hidden;
            margin-top: 45px;
            text-align: center
        }

        .whykurly_area .txt_area .col {
            width: 315px;
            display: inline-block;
            margin: 43px 0 0 10px;
            vertical-align: top
        }

        .whykurly_area .txt_area .col .icon {
            width: 100%;
            text-align: center
        }

        .txt_reference {
            margin-top: 30px
        }

        .btn_newMore {
            position: absolute;
            bottom: 3px;
            right: 0;
            font-size: 18px;
            color: #5f0080;
            font-weight: 700
        }

        .goods-cart-no-package-name {
            font-size: 12px;
            color: #777
        }

        .chk_security {
            margin: 10px 0 0 216px
        }

        .chk_security input {
            vertical-align: middle
        }

        .goods_subTxt {
            margin-bottom: 15px
        }

        .happy_center {
            overflow: hidden;
            font: normal 16px/23px 'Noto Sans';
            color: #333;
            letter-spacing: 0
        }

        .happy_center.fst {
            padding: 60px 5px 0;
            border-top: 1px solid #ddd
        }

        .happy_center .happy .tit {
            font-weight: 700;
            font-size: 28px;
            color: #666;
            line-height: 41px;
            letter-spacing: .75px
        }

        .happy_center .happy .emph {
            display: block;
            padding-bottom: 6px;
            font-weight: 700;
            font-size: 18px;
            color: #666
        }

        .happy_center .happy .sub {
            font-weight: 200;
            padding-top: 31px
        }

        .happy_center .list {
            overflow: hidden;
            width: 100%;
            padding: 59px 0 71px
        }

        .happy_center .list li {
            float: left;
            width: 340px
        }

        .happy_center .list li:last-child {
            width: 212px
        }

        .happy_center .list .tit {
            font-weight: 700;
            font-size: 18px;
            color: #5f0080;
            line-height: 27px
        }

        .happy_center .list .tit:before {
            content: "";
            float: left;
            width: 3px;
            height: 20px;
            margin: 5px 10px 0 0;
            background-color: #5f0080
        }

        .happy_center .list .sub {
            font-weight: 200;
            padding-top: 9px;
            font-size: 17px;
            line-height: 25px
        }

        .happy_center .list .expend {
            padding-top: 13px;
            font-weight: 200;
            font-size: 15px;
            color: #666;
            line-height: 22px;
            letter-spacing: -.4px
        }

        .happy_center .unfold {
            overflow: hidden;
            position: relative;
            padding: 14px 0 17px;
            border: 1px solid #ddd
        }

        .happy_center .unfold .tit {
            float: left;
            width: 179px;
            padding: 0 0 0 29px;
            font-weight: 700;
            font-size: 18px;
            color: #5f0080;
            line-height: 27px;
            letter-spacing: 0
        }

        .happy_center .unfold .sub {
            float: left;
            width: 650px;
            padding: 0;
            line-height: 27px
        }

        .happy_center .unfold .emph {
            display: inline;
            padding: 0 8px 0 0;
            font-weight: 700;
            font-size: 16px
        }

        .happy_center .asked {
            position: absolute;
            right: 25px;
            top: 50%;
            width: 95px;
            height: 24px;
            margin-top: -14px;
            font-size: 16px;
            color: #5f0080;
            line-height: 24px;
            text-align: right;
            letter-spacing: -.4px
        }

        .happy_center .asked .txt {
            padding-right: 20px
        }

        .happy_center .asked .ico {
            position: absolute;
            right: 0;
            top: 50%;
            width: 14px;
            height: 8px;
            margin-top: -4px
        }

        .happy_center .happy_faq {
            display: none;
            overflow: hidden;
            padding: 39px 0 40px;
            border-bottom: 1px solid #ddd
        }

        .happy_center .happy_faq.fst {
            padding: 53px 0 56px
        }

        .happy_faq .questions {
            float: right;
            width: 664px;
            padding: 2px 20px 0 0;
            font-weight: 200;
            font-size: 15px;
            line-height: 22px
        }

        .happy_faq .questions .space {
            height: 0
        }

        .happy_faq .questions.fst .space {
            height: 22px
        }

        .happy_faq .item {
            float: left;
            width: 340px;
            padding: 0 0 0 31px;
            font-weight: 700;
            font-size: 17px;
            line-height: 25px
        }

        .happy_faq .bar_pc {
            display: block
        }

        .happy_faq .subject {
            display: block;
            padding: 30px 0 6px;
            font-weight: 700;
            font-size: 15px;
            color: #5f0080;
            line-height: 22px
        }

        .happy_faq .subject.no {
            display: none
        }

        .happy_faq .subject.no_padding {
            padding-top: 0
        }

        .happy_faq .noti {
            padding-top: 22px
        }

        .happy_faq .list_questions {
            padding-top: 20px
        }

        .happy_faq .list_questions li:before {
            content: "";
            overflow: hidden;
            float: left;
            width: 3px;
            height: 3px;
            margin: 9px 4px 0 0;
            border-radius: 100%;
            background-color: #333
        }

        .order .happy_faq {
            width: 100%;
            padding: 12px 0 40px 180px
        }

        .order .happy_faq .questions {
            width: 100%
        }

        .order .happy_faq .subject {
            padding: 28px 0 0;
            color: #333
        }

        .order .happy_faq .list_questions {
            padding-top: 0
        }

        .order .happy_faq .list_questions li {
            margin-top: 3px
        }

        .order .happy_faq .list_questions li:before {
            margin-top: 11px
        }

        .happy_center.on .asked .ico {
            transform: rotate(180deg)
        }

        .happy_center.on .happy_faq {
            display: block
        }

        .happy_center.lst .unfold {
            border-top: none
        }

        #wrap .layer_pop {
            background-color: #fff;
            border: 2px solid #737373
        }

        #wrap .layer_pop .btn_area {
            overflow: hidden;
            width: 100%;
            height: 25px;
            padding-right: 15px;
            background: #fff;
            line-height: 22px;
            border-top: 1px solid #737373
        }

        #wrap .layer_pop .btn_area a {
            display: block;
            padding: 0 10px;
            float: right;
            color: #404040
        }

        .secu_announce {
            position: absolute;
            top: 10px;
            right: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            color: red
        }

        #instaRegram {
            overflow: hidden;
            position: relative;
            width: 100%;
            height: 150px
        }

        #instaRegram .thumb {
            float: left;
            position: relative;
            width: 150px;
            height: 150px
        }

        #instaRegram .thumb img {
            position: relative;
            float: left;
            width: 100%
        }

        #instaRegram div.scrollingHotSpotLeft,#instaRegram div.scrollingHotSpotRight {
            z-index: 200;
            overflow: hidden;
            position: absolute;
            bottom: 0;
            min-width: 80px;
            width: 80px;
            height: 100%;
            opacity: 0;
            font-size: 0;
            line-height: 0;
            text-indent: -9999px
        }

        #instaRegram div.scrollingHotSpotRight:hover {
            opacity: .35;
            zoom:1}

        #instaRegram div.scrollingHotSpotLeft {
            left: 0;
            background: #fff url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_left.gif) no-repeat 50% 50%;
            cursor: url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_left.png),url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_left.cur),w-resize
        }

        #instaRegram div.scrollingHotSpotRight {
            right: 0;
            background: #fff url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_right.gif) no-repeat 50% 50%;
            cursor: url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_right.png),url(https://res.kurly.com/images/common/old/common/ico_insta_arrow_right.cur),e-resize
        }

        #instaRegram div.scrollWrapper {
            position: relative;
            overflow: hidden;
            width: 100%;
            height: 100%
        }

        #instaRegram div.scrollableArea {
            position: relative;
            width: auto;
            height: 100%
        }

        #makeMeScrollable {
            position: relative;
            width: 100%;
            height: 150px
        }

        .agree_ready .h_line {
            height: 1px;
            background: #dddfe1;
            border: none
        }

        .agree_ready .subject {
            display: block;
            font-style: initial;
            font-family: malgun gothic
        }

        .deal_100won {
            padding: 11px 0 9px;
            font-weight: 400;
            font-size: 12px;
            color: #5f0080;
            line-height: 18px
        }

        .fixed_cart .styled-button,.goodsview_cart .styled-button {
            height: 54px;
            font-family: noto sans;
            font-weight: 700;
            font-size: 16px;
            letter-spacing: 0;
            border-radius: 3px;
            margin-left: 12px
        }

        .goodsview_cart .styled-button.goods-cart-type,.goodsview_cart .styled-button.goods-direct-buy {
            width: 260px
        }

        .goodsview_cart .styled-button.goods-heart-type,.goodsview_cart .styled-button.goods-alarm-type {
            width: 128px;
            margin-left: 12px
        }

        .goods-view-form-button .styled-button.goods-direct-buy,.goods-view-form-button .styled-button.goods-cart-type {
            background-color: #5f0080;
            color: #fff
        }

        .goods-view-form-button .styled-button.goods-heart-type {
            color: #5f0080
        }

        .goods-view-form-button .styled-button.goods-heart-type.__active {
            color: #fff
        }

        .goods-view-form-button .styled-button.goods-alarm-type.desable-type {
            border: 1px solid #ddd;
            color: #ddd
        }

        .goods-view-form .kurly_pass {
            border-bottom: 1px solid #f5f5f5
        }

        .goods-view-form .address_search {
            margin-bottom: 20px;
            font-family: applesdgothicneo,malgun gothic,맑은 고딕,sans-serif;
            color: #000;
            letter-spacing: 0
        }

        .goods-view-form .address_search {
            padding: 20px 20px 18px;
            border: 1px solid #dddfe1;
            font-size: 14px;
            line-height: 20px
        }

        .goods-view-form .address_search .btn {
            display: block;
            overflow: hidden;
            height: 44px;
            margin-top: 20px;
            background-color: #5f0080;
            font-size: 14px;
            font-family: noto sans;
            color: #fff;
            line-height: 42px;
            text-align: center
        }

        .goods-view-form .address_search .btn:hover {
            background-color: #5f0080
        }

        .NanumMyeongjo {
            font-family: NanumMyeongjo-Bold
        }

        input.lines {
            padding: 3px
        }

        .after:after {
            content: " ";
            display: block;
            height: 0;
            clear: both
        }

        .colBF {
            color: #bfbfbf
        }

        #boxScroll {
            overflow: scroll;
            height: 120px
        }

        .hides {
            display: none
        }

        .displaynone {
            display: none!important
        }

        .space {
            height: 100px
        }

        .xans-member-join {
            font-size: 12px
        }

        .xans-member-join h3 {
            padding: 50px 0 12px;
            font-size: 20px;
            line-height: 28px;
            font-family: noto sans;
            font-weight: 700;
            color: #514859;
            letter-spacing: 0
        }

        .xans-member-join .required {
            margin: -25px 0 10px;
            color: #353535;
            text-align: right
        }

        .xans-member-join .boardWrite {
            table-layout: fixed;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #dddfe1;
            line-height: 180%
        }

        .xans-member-join .required img {
            vertical-align: middle
        }

        .xans-member-join .boardWrite img {
            vertical-align: middle
        }

        .xans-member-join .boardWrite td.memberCols1 {
            width: 150px;
            padding: 25px 0 23px 20px;
            text-align: left;
            vertical-align: middle;
            font-size: 13px;
            font-weight: 700
        }

        .xans-member-join .boardWrite td.memberCols2 {
            width: auto;
            padding: 15px 0 13px 10px;
            border-top: 1px solid #f4f4f4;
            vertical-align: middle;
            text-align: left
        }

        .xans-member-join .boardWrite td.memberCols3 {
            width: 150px;
            padding: 15px 0 13px 20px;
            text-align: left;
            vertical-align: middle;
            font-size: 13px;
            font-weight: 700
        }

        .xans-member-join input[type=text],.xans-member-join input[type=password] {
            line-height: 40px;
            height: 40px;
            border: 1px solid #bfbfbf
        }

        .xans-member-join input[type=text],.xans-member-join input[type=password],.xans-member-join textarea {
            padding: 0 4px;
            border: 1px solid #d9d9d9;
            color: #202020;
            font-size: 12px
        }

        .xans-member-join .boardWrite input[type=text],.xans-member-join .boardWrite input[type=password] {
            line-height: 40px;
            height: 40px;
            border: 1px solid #bfbfbf
        }

        .xans-member-join .boardWrite input[type=radio],.xans-member-join .boardWrite input[type=checkbox] {
            line-height: 40px;
            height: 40px;
            border: none
        }

        .xans-member-join .boardWrite a {
            text-decoration: none
        }

        .xans-member-join #zipcode0,.xans-member-join #zipcode1 {
            width: 65px;
            text-align: center
        }

        .xans-member-join #address,.xans-member-join #address_sub {
            width: 290px;
            margin: 5px 0 0
        }

        .xans-member-join #birth_year,.xans-member-join #marry_year,.xans-member-join #partner_year {
            width: 70px;
            margin: 0 4px 0 0
        }

        .xans-member-join #birth_month,.xans-member-join #marry_month,.xans-member-join #partner_month,.xans-member-join #birth_day,.xans-member-join #marry_day,.xans-member-join #partner_day {
            width: 40px;
            margin: 0 4px 0 0
        }

        .xans-member-join .agreeArea .agree {
            overflow: auto;
            height: 110px;
            padding: 20px;
            background: #fff;
            border: 1px solid #bfbfbf
        }

        .xans-member-join .agreeArea {
            padding: 20px 20px 15px;
            color: #747474;
            font-size: 11px;
            line-height: 20px;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664
        }

        .xans-member-join .agreeArea .check {
            padding: 7px 0 0;
            color: #202020;
            font-size: 12px;
            height: 30px;
            width: 100%;
            text-align: right
        }

        .noline .noline_span {
            float: left;
            width: 80px
        }

        .noline .noline_span2 {
            float: left;
            width: 55px
        }

        .noline .noline_span3 {
            float: left;
            width: 45px;
            margin-left: 10px;
            margin-top: 4px
        }

        .noline .noline_span4 {
            float: left;
            width: 125px;
            margin-left: 10px;
            margin-top: 4px
        }

        .noline .noline_span5 {
            float: left;
            margin-left: 10px;
            margin-top: 4px
        }

        .noline .text_position {
            position: relative;
            top: 7px;
            left: 5px
        }

        .noline .text_position2 {
            position: relative;
            left: 5px
        }

        .bhs_button.active {
            background-color: #fff;
            color: #5f0080
        }

        .xans-member-joincomplete {
            padding: 50px 0;
            line-height: 150%;
            text-align: center;
            background-color: #f7f5f8;
            border-top: 2px solid #4d4d4d;
            border-bottom: 1px solid #4d4d4d
        }

        .xans-member-joincomplete .joinComplete {
            width: 430px;
            margin: 0 auto;
            color: #4c4c4c
        }

        .xans-member-joincomplete .joinComplete .desc {
            margin: 0 0 30px;
            font-size: 20px;
            font-weight: 700
        }

        .xans-member-joincomplete .joinComplete .memberInfo {
            overflow: hidden;
            text-align: left;
            border-top: 2px solid #6a3664;
            padding-top: 10px
        }

        .xans-member-joincomplete .joinComplete .memberInfo li {
            border-bottom: 1px solid #6a3664
        }

        .xans-member-joincomplete .joinComplete .memberInfo li strong {
            text-indent: 20px;
            font-weight: 400
        }

        .xans-member-joincomplete .joinComplete .memberInfo li span .bolds,.xans-member-joincomplete .joinComplete .memberInfo li strong {
            display: inline-block;
            width: 30%;
            padding: 20px 0;
            color: #000;
            font-size: 13px
        }

        .xans-member-joincomplete .joinComplete .memberInfo li.nobold {
            padding: 20px 0;
            font-size: 13px;
            text-indent: 20px
        }

        .xans-member-joincomplete .joinComplete .memberInfo li span input[type=radio] {
            position: relative;
            top: 2px
        }

        .xans-member-joincomplete .joinComplete .memberInfo li span .bolds,.xans-member-joincomplete .joinComplete .memberInfo li strong {
            font-weight: 700
        }

        .xans-member-joincomplete .joinComplete .button {
            margin: 30px 0 0
        }

        .xans-myshop-bankbook {
            overflow: hidden;
            padding: 0;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664;
            width: 1050px;
            margin: 0 auto
        }

        .xans-myshop-bankbook ul {
            display: table;
            width: 100%;
            min-width: 756px;
            font-size: 0;
            line-height: 0
        }

        .xans-myshop-bankbook li {
            display: inline-block;
            position: relative;
            overflow: hidden;
            width: 50%;
            margin: 0;
            font-size: 12px;
            color: #353535;
            line-height: 24px;
            vertical-align: top;
            border-bottom: 1px solid #e0e0e0
        }

        .xans-myshop-bankbook li .title {
            float: left;
            width: 30%;
            padding: 25px 0 23px 10px;
            background-color: #f7f5f8
        }

        .xans-myshop-bankbook li .data {
            float: right;
            width: 60%;
            padding: 23px 0 23px 10px;
            text-align: left
        }

        .xans-myshop-bankbook li .use {
            color: #000
        }

        .xans-myshop-bankbook li a.btn {
            position: absolute;
            right: 25px;
            top: 17px
        }

        #order_search_btn {
            float: right;
            position: relative;
            right: 55px
        }

        .order-btn-wrap {
            padding-bottom: 20px;
            border-bottom: 1px solid #5f0080
        }

        .styled-wrap input[type=checkbox],.styled-wrap input[type=radio] {
            box-sizing: border-box;
            padding: 0
        }

        .xans-myshop-boardlist tr td {
            padding: 25px 3px 23px;
            border-top: 1px solid #e3e3e3;
            text-align: center;
            vertical-align: middle
        }

        .xans-myshop-boardlist table td {
            padding: 25px 3px 23px;
            border-top: 1px solid #e3e3e3;
            text-align: center;
            font-weight: 700;
            vertical-align: middle
        }

        .xans-myshop-boardlist .goodsnm {
            padding-top: 10px;
            font-weight: 700
        }

        .xans-myshop-wishlistbutton {
            overflow: hidden;
            margin: 20px 0 0;
            text-align: right
        }

        .xans-myshop-wishlistbutton span.left {
            float: left
        }

        .xans-myshop-summary {
            margin: 0 0 50px;
            padding: 0;
            border-top: 2px solid #5f0080;
            border-bottom: 1px solid #5f0080
        }

        .xans-myshop-summary ul {
            display: table;
            width: 100%;
            min-width: 756px;
            font-size: 0;
            line-height: 0
        }

        .xans-myshop-summary li {
            display: inline-block;
            position: relative;
            overflow: hidden;
            width: 50%;
            margin: 0;
            font-size: 12px;
            color: #353535;
            line-height: 18px;
            vertical-align: top;
            border-bottom: 1px solid #e1e1e1
        }

        .xans-myshop-summary li .title {
            float: left;
            width: 30%;
            padding: 25px 0 23px 10px
        }

        .xans-myshop-summary li .data {
            width: 35%;
            padding: 25px 0 23px 10px;
            text-align: left;
            vertical-align: middle;
            float: left
        }

        .xans-myshop-summary li strong {
            background-color: #f7f5f8;
            font-size: 13px
        }

        .xans-myshop-mileagehistorypackage .tab {
            display: table;
            width: 100%;
            padding-bottom: 10px
        }

        .xans-myshop-mileagehistorypackage .tab .right {
            float: right
        }

        .xans-myshop-mileagehistorypackage .tab .right li {
            display: inline-block;
            padding-left: 15px
        }

        .xans-myshop-mileagehistorypackage .tab .right li .on {
            color: #6a3664;
            font-weight: 700
        }

        .xans-myshop-mileagehistorypackage .tab h2 {
            color: gray;
            float: left
        }

        .xans-myshop-mileagehistorypackage table tr:last-child {
            border-bottom: none
        }

        .xans-myshop-mileagehistorypackage table tr td {
            padding: 15px 0;
            border-bottom: 1px solid #d9d9d9;
            font-size: 13px
        }

        .xans-myshop-mileagehistorypackage table tr td.text {
            text-align: left;
            color: #858585
        }

        .xans-myshop-mileagehistorypackage table tr td.date {
            text-align: center
        }

        .xans-myshop-mileagehistorypackage table tr td.money {
            text-align: center;
            font-weight: 700
        }

        .xans-myshop-mileagehistorypackage .noact {
            color: #acacac
        }

        .xans-myshop-mileagehistorypackage .act {
            color: #5f0080
        }

        .xans-myshop-unavaillist table td.noData {
            padding: 50px 0;
            text-align: center;
            font-weight: 700;
            color: #757575
        }

        .xans-myshop-unavaillist table th {
            padding: 25px 0 23px;
            vertical-align: middle;
            font-size: 13px
        }

        .xans-myshop-unavaillist table {
            border-collapse: separate;
            line-height: 1.5;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664
        }

        .xans-myshop-unavaillist2 table {
            border-top: 2px solid #5f0080
        }

        .xans-myshop-unavaillist table {
            border-top: 2px solid #5f0080
        }

        .xans-myshop-unavaillist2 table td.noData {
            padding: 50px 0;
            text-align: center;
            font-weight: 700;
            color: #757575
        }

        .xans-myshop-unavaillist2 table th {
            padding: 25px 0 23px;
            vertical-align: middle;
            font-size: 13px
        }

        .xans-myshop-unavaillist2 table {
            border-collapse: separate;
            line-height: 1.5;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664
        }

        .product_detail_info table th {
            width: 25%!important
        }

        tr#product-review-read p {
            line-height: 25px
        }

        .myinfo-text {
            position: relative;
            bottom: 16px;
            left: 5px
        }

        #order_search_btn {
            border: 0;
            width: 122px;
            background: #795c90;
            color: #fff;
            text-align: center
        }

        .login_wrap {
            width: 650px;
            margin: 0 auto;
            display: table
        }

        .login {
            text-align: center
        }

        .login_button {
            margin-top: 50px;
            border-top: 1px solid #6a3664;
            padding-top: 20px
        }

        .login_button ul {
            text-align: center
        }

        .login_button li {
            display: inline-block
        }

        .login_button .bhs_button {
            background-color: #fff;
            border: 1px solid #6a3664;
            color: #6a3664
        }

        .login_button .bhs_button:hover {
            background-color: #6a3664;
            border: 1px solid #6a3664;
            color: #fff
        }

        .login .text {
            width: 110px;
            font-size: 13px;
            font-weight: 700;
            text-align: left;
            padding-left: 5px
        }

        .login ul {
            display: inline-block;
            vertical-align: middle;
            height: 90px;
            padding-right: 20px
        }

        .login ul li {
            clear: both;
            height: 45px;
            line-height: 45px
        }

        .login ul li span {
            color: #000;
            font-weight: 700
        }

        .login input[type=text],.login input[type=password] {
            text-indent: 5px;
            margin: 0;
            border: 1px solid #bfbfbf;
            line-height: 38px;
            height: 38px
        }

        .layout-bg {
            background-color: #f7f5f8;
            width: 100%;
            display: table;
            padding: 50px 0
        }

        .layout-bg2 {
            background-color: #f1eef3;
            width: 100%;
            display: table;
            padding: 50px 0
        }

        .xans-member-findid {
            font-size: 12px;
            padding: 30px 0;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664
        }

        .xans-member-findid .findId {
            width: 430px;
            margin: 0 auto
        }

        .xans-member-findid .findId p {
            margin: 7px 0 0;
            text-align: center
        }

        .xans-member-findid .findId p.button {
            margin: 15px 0 0;
            padding-left: 48px
        }

        .xans-member-findid .findId strong {
            display: inline-block;
            margin: 0 0 5px;
            padding: 0 0 0 10px;
            width: 150px;
            font-weight: 700;
            text-align: left;
            font-size: 14px
        }

        .xans-member-findid .findId #email,.xans-member-findid .findId #name {
            width: 195px;
            padding-left: 3px
        }

        .xans-member-findid .findId input[type=text],.xans-member-findid .findId input[type=password],.xans-member-findid .findId select {
            width: 250px;
            height: 36px;
            line-height: 36px;
            border: 1px solid #bfbfbf;
            padding: 4px
        }

        #mypage_nav {
            float: left;
            border: 1px solid #efefef;
            width: 200px;
            font-weight: 700
        }

        #mypage_nav .mypage_nav {
            padding-bottom: 250px
        }

        #mypage_nav ul {
            clear: both
        }

        #mypage_nav .customer {
            background-color: #5f0080;
            padding: 20px;
            line-height: 20px;
            color: #cbb5dd
        }

        #mypage_nav .mypage_nav li {
            display: block
        }

        #mypage_nav .mypage_nav a {
            display: block;
            background-color: #fff;
            color: #aaa;
            padding: 0 20px;
            border-bottom: 1px solid #efefef;
            line-height: 50px
        }

        #mypage_nav .customer li {
            width: 100%;
            display: table;
            font-size: 11px
        }

        #mypage_nav .customer li+li {
            margin-top: 30px;
            padding-top: 20px
        }

        #mypage_nav .customer .title {
            color: #cbb5dd;
            text-align: center;
            float: left
        }

        #mypage_nav .customer span {
            color: #cbb5dd;
            float: right
        }

        #mypage_nav .arrow {
            float: right;
            font-size: 14px
        }

        #mypage_nav .mypage_nav .active {
            background-color: #5f0080;
            color: #fff;
            font-weight: 700
        }

        .mypage_wrap {
            width: 820px;
            float: right
        }

        .mypage_wrap_outer {
            display: table;
            width: 100%;
            padding-bottom: 50px
        }

        .xans-member-join #avoidDbl .noline {
            float: left;
            padding: 0 2px
        }

        .titleArea {
            min-height: 30px;
            margin: 0;
            text-align: left
        }

        .titleArea2 {
            padding-top: 50px;
            margin: 0;
            text-align: left
        }

        .titleArea2 h2 {
            display: inline-block;
            margin-bottom: 20px;
            padding: 0;
            color: gray;
            font-size: 16px
        }

        .titleArea2 p {
            display: inline-block;
            margin: 0 0 0 10px;
            padding: 0 0 0 10px;
            color: #939393;
            font-size: 13px
        }

        .titleArea2 p strong {
            color: red
        }

        .titleArea h2 {
            display: inline-block;
            padding: 0;
            color: gray;
            font-size: 16px
        }

        .titleArea p {
            display: inline-block;
            margin: 0 0 0 10px;
            padding: 0 0 0 10px;
            color: #939393;
            font-size: 13px
        }

        .titleArea p.right {
            float: right
        }

        .titleArea.type2 {
            margin-bottom: 15px
        }

        .titleArea.type2 h2 {
            display: block
        }

        .titleArea.type2 p {
            display: block;
            margin: 10px 0 0;
            padding: 0;
            line-height: 18px
        }

        .input_txt th {
            padding: 10px 0
        }

        .xans-board-listheader {
            border-top: 2px solid #522772;
            font-size: 13px;
            line-height: 140%
        }

        .xans-board-listheader tr td {
            padding: 12px;
            border-top: 1px solid #f4f4f4;
            text-align: center;
            vertical-align: middle;
            word-wrap: break-word
        }

        .xans-board-listheader tbody tr:first-child td {
            border-top: 1px solid #333
        }

        .xans-board-listheader.jh {
            border-bottom: 1px solid #f4f4f4
        }

        .xans-board-listheader.jh tr td {
            padding: 20px 0
        }

        .xans-board-listheader td.product {
            padding-left: 10px;
            text-align: left;
            font-size: 16px
        }

        .xans-board-listheader td .price {
            font-size: 18px;
            font-weight: 700;
            color: #6a3664!important
        }

        .xans-board-listheader td.button a span {
            width: 100px;
            line-height: 27px;
            margin: 0 15px 5px 0
        }

        .xans-board-listheader .thumb {
            width: 126px
        }

        .xans-board-listheader .thumb img {
            width: 126px
        }

        .xans-board-listheader .thumb2 {
            width: 150px
        }

        .xans-board-listheader .quantity {
            width: 70px
        }

        .xans-board-listheader .system {
            width: 100px
        }

        .xans-board-listheader .rev {
            width: 100px
        }

        .xans-board-listheader .price_p {
            font-size: 12px;
            color: #000
        }

        .xans-board-listheader .opt {
            color: gray;
            font-size: 12px
        }

        .xans-board-listheader td.product {
            width: auto;
            padding: 12px 20px
        }

        .xans-board-listheader p.ordno {
            text-decoration: underline;
            letter-spacing: .2px
        }

        .xans-board-listheader th {
            padding: 20px 0;
            vertical-align: middle;
            font-size: 12px
        }

        .xans-board-listheader .state {
            width: 110px;
            font-weight: 700
        }

        .xans-board-listheader .product {
            width: auto
        }

        .xans-board-listheader .state {
            width: 110px;
            font-weight: 700
        }

        .xans-board-listheader .number {
            width: 181px
        }

        .xans-board-listheader .state {
            width: 156px;
            font-weight: 700
        }

        .xans-board-listheader td.state {
            color: #795c90
        }

        .xans-myshop-couponserial .couponSerial {
            padding: 20px;
            border-top: 2px solid #5f0080;
            background-color: #f7f5f8;
            text-align: left
        }

        .xans-myshop-couponserial fieldset {
            border: none;
            vertical-align: top
        }

        .xans-myshop-couponserial legend {
            visibility: hidden;
            position: absolute;
            left: -9999px;
            top: -9999px;
            width: 0;
            height: 0;
            line-height: 0
        }

        .xans-myshop-couponserial .couponSerial p {
            padding: 10px 0 0;
            color: #757575
        }

        .xans-myshop-couponserial .coupon_text {
            width: 100%;
            line-height: 18px;
            font-weight: 400;
            color: #000;
            border-bottom: 1px solid #5f0080;
            padding: 10px;
            font-size: 11px
        }

        .xans-myshop-couponserial {
            padding-bottom: 20px
        }

        .styled-table td.state {
            color: #795c90
        }

        .styled-table .thumb2 {
            width: 150px
        }

        .styled-table .quantity {
            width: 70px
        }

        .styled-table .system {
            width: 100px
        }

        .styled-table .rev {
            width: 100px
        }

        .styled-table td.product h4 {
            font-size: 16px
        }

        .styled-table td.product .price_p {
            font-size: 16px;
            color: #5f0080;
            font-weight: 700;
            line-height: 30px
        }

        .styled-table td.product .opt {
            font-size: 13px;
            color: gray
        }

        .xans-board-title .title {
            min-height: 30px;
            margin: 0 0 20px
        }

        .xans-board-title .title p {
            display: inline-block;
            margin: 0;
            padding-left: 20px;
            color: #939393;
            vertical-align: bottom
        }

        .xans-board-title .title h2 {
            display: inline-block;
            padding: 0;
            font-size: 16px!important
        }

        .xans-board-write .prdSelect {
            overflow: hidden;
            margin: 20px 0;
            padding: 15px 20px;
            border: 5px solid #f4f4f4
        }

        .xans-board-write .prdThumb {
            float: left
        }

        .xans-board-write .prdInfo {
            float: left;
            width: 540px;
            padding: 0 0 0 17px
        }

        .xans-board-write .prdInfo h3 {
            margin: 17px 0 5px;
            font-size: 14px;
            color: #2e2e2e
        }

        .xans-board-write .prdInfo .price {
            font-size: 14px;
            font-weight: 700;
            color: #008bcc
        }

        .xans-board-write .prdInfo .button {
            margin: 19px 0 0;
            padding: 13px 0 0;
            border-top: 1px solid #f4f4f4
        }

        .xans-board-write .boardWrite {
            table-layout: fixed;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664;
            line-height: 180%
        }

        .xans-board-write .boardWrite2 {
            table-layout: fixed;
            border-top: 2px solid #333;
            line-height: 180%
        }

        .xans-board-write table th {
            width: 110px;
            padding: 15px 0 15px 20px;
            background-color: #f7f5f8;
            border-bottom: 1px solid #f4f4f4;
            text-align: left;
            font-weight: 400;
            vertical-align: middle
        }

        .xans-board-write table td {
            width: auto;
            padding: 15px 0 15px 10px;
            height: 23px;
            border-top: 1px solid #f4f4f4;
            border-bottom: 1px solid #f4f4f4;
            vertical-align: middle;
            line-height: 20px
        }

        .xans-board-write table input[type=text],.xans-board-write table input[type=password] {
            height: 25px;
            padding: 3px
        }

        .xans-board-write table #subject {
            width: 630px
        }

        .xans-board-write table input[type=text],.xans-board-write table input[type=password],.xans-board-write table textarea {
            height: 30px;
            line-height: 25px;
            border: 1px solid #d9d9d9;
            color: #202020
        }

        .xans-board-write table select {
            padding: 6px 5px;
            border: 1px solid #d9d9d9;
            margin-bottom: 5px;
            color: #202020
        }

        .goodsinfo_table {
            width: 100%;
            table-layout: fixed;
            border-top: 2px solid #6a3664;
            border-bottom: 1px solid #6a3664;
            line-height: 180%
        }

        .goodsinfo_table th {
            padding: 10px;
            color: #202020;
            text-align: left;
            font-size: 14px
        }

        .goodsinfo_table td {
            padding-left: 10px
        }

        .goodsinfo_table td.last {
            border-bottom: none
        }

        .goodsinfo_table td.memberCols1 {
            width: 150px;
            padding: 25px 0 23px 20px;
            text-align: left;
            vertical-align: middle;
            font-size: 13px;
            font-weight: 700
        }

        .goodsinfo_table td.memberCols2 {
            width: auto;
            padding: 25px 0 23px 10px;
            border-top: 1px solid #f4f4f4;
            vertical-align: middle;
            text-align: left
        }

        .goodsinfo_table td.memberCols2 input {
            height: 40px;
            border: 1px solid #bfbfbf;
            margin: 3px;
            padding: 3px
        }

        .goodsinfo_table td.memberCols2 #zipcode0,.goodsinfo_table td.memberCols2 #zipcode1 {
            width: 65px
        }

        .goodsinfo_table.heights td {
            padding: 8px
        }

        .goodsinfo_table.heights td input[type=radio] {
            position: relative;
            top: 4px;
            width: 20px;
            height: 15px
        }

        .goodsinfo_table tr:last-child td {
            border: none
        }

        .goodsinfo_table.heights td input[type=text] {
            padding: 8px;
            border: 1px solid #bfbfbf
        }

        .goodsinfo_table.heights td #address,.goodsinfo_table.heights td #address_sub {
            width: 320px
        }

        .goodsinfo_table.heights th img {
            position: relative;
            top: 5px
        }

        .goodsinfo_table.heights td #memo {
            width: 560px;
            padding: 10px;
            overflow: scroll;
            resize: none
        }

        .goodsinfo_table.heights td #emaili {
            width: 360px;
            padding: 10px
        }

        .goodsinfo_table.heights td select {
            padding: 8px;
            border: 1px solid #bfbfbf
        }

        .goodsinfo_table .titlec_wrap {
            padding-top: 10px;
            text-align: left
        }

        .goodsinfo_table .titlec_wrap2 {
            height: 26px;
            border-bottom: 1px solid #dedede
        }

        .recordc {
            font-weight: 700;
            width: 175px;
            font-size: 14px;
            display: none
        }

        .recordno {
            display: none
        }

        .mypage_wrap .dates {
            border-top: 2px solid #5f0080;
            border-bottom: 1px solid #5f0080;
            display: table;
            width: 100%;
            clear: both;
            padding: 0
        }

        .mypage_wrap .dates .title {
            width: 150px;
            background-color: #f7f5f8;
            font-size: 15px;
            font-weight: 700
        }

        .mypage_wrap .dates ul {
            display: table-cell;
            padding: 20px 0 0 10px;
            vertical-align: middle
        }

        .mypage_wrap .dates li {
            clear: both;
            display: table;
            padding-bottom: 10px;
            width: 100%
        }

        .mypage_wrap .calender input {
            height: 40px;
            line-height: 40px;
            width: 203px;
            border: 1px solid #bfbfbf;
            text-indent: 10px;
            max-width: none
        }

        .mypage_wrap .calender button {
            display: inline-block;
            border: none;
            vertical-align: middle;
            position: relative;
            right: 40px;
            bottom: 3px
        }

        .xans-board-search {
            margin-top: 30px;
            padding: 20px 0 20px 10px;
            color: #2e2e2e;
            font-size: 12px;
            clear: both;
            border-top: 1px solid #5e3d5a;
            width: 100%
        }

        .xans-board-search2 {
            height: 80px;
            padding: 0
        }

        .xans-board-search input[type=text] {
            height: 34px;
            line-height: 34px;
            width: 220px;
            border: 1px solid #bfbfbf;
            color: #000;
            float: right;
            padding: 4px
        }

        .xans-board-search select#search_date {
            margin: 0 2px 0 22px
        }

        .xans-board-search input[type=image] {
            float: right;
            position: relative
        }

        .xans-board-search select {
            margin: 0 2px 0 0;
            border: 1px solid #bfbfbf;
            line-height: 34px;
            height: 34px;
            vertical-align: middle;
            padding-bottom: 5px
        }

        .xans-board-search .input_txt img {
            position: relative;
            right: 5px;
            top: -2px
        }

        .xans-board-search .stxt {
            font-size: 14px
        }

        .xans-board-search .stxt input {
            margin-left: 10px;
            margin-right: 3px;
            position: relative;
            top: 3px
        }

        .xans-board-listheader td a {
            color: #555
        }

        .search_bt select {
            margin: 0 2px 0 10px;
            width: 120px;
            border: 1px solid #bfbfbf;
            line-height: 34px;
            height: 34px;
            vertical-align: middle;
            padding-bottom: 5px;
            float: right
        }

        .caution_box {
            position: absolute;
            top: 40px;
            left: 50%;
            width: 371px;
            height: 171px;
            margin-left: 100px;
            padding: 30px;
            background: #fafafa;
            border: 1px solid #e5e5e5
        }

        .caution_box strong {
            display: block;
            margin-bottom: 10px;
            padding: 3px 0 3px 27px;
            background: url(https://res.kurly.com/images/common/old/common/ico_speaker.gif) no-repeat left center;
            font-size: 14px;
            color: red
        }

        .caution_box p {
            line-height: 20px
        }

        .caution_box.type2 {
            position: static;
            width: 100%;
            height: auto;
            margin: 10px 0 0
        }

        .caution_box.type2 span {
            display: block;
            color: red
        }

        .xans-board-movement {
            border-top: 2px solid #333;
            border-bottom: 2px solid #333;
            margin: 20px 0
        }

        .xans-board-movement li {
            overflow: hidden;
            padding: 0 20px;
            border-bottom: 1px solid #f4f4f4;
            line-height: 140%;
            color: #333
        }

        .xans-board-movement li strong {
            width: 6%;
            padding-left: 15px;
            border-right: 1px solid #f4f4f4;
            font-weight: 400;
            background: url(https://res.kurly.com/pc/etc/old/images/board/ico_move_prev.gif) no-repeat 0 15px
        }

        .xans-board-movement li a,.xans-board-movement li strong {
            float: left;
            padding: 10px
        }

        .xans-board-movement li.next {
            border: 0
        }

        .xans-board-movement li.next strong {
            background: url(https://res.kurly.com/pc/etc/old/images/board/ico_move_next.gif) no-repeat 0 15px
        }

        .xans-board-listheader tr td.eng {
            color: #999
        }

        .boardView {
            table-layout: fixed;
            border-top: 2px solid #333;
            border-bottom: 1px solid #f4f4f4;
            color: #333;
            line-height: 180%;
            margin-top: 20px
        }

        .boardView th {
            width: 130px;
            padding: 13px 0 13px 20px;
            background-color: #f7f5f8;
            border-top: 1px solid #f4f4f4;
            text-align: left
        }

        .boardView td {
            width: auto;
            padding: 13px 0 13px 23px;
            border-top: 1px solid #f4f4f4
        }

        .boardView tr.etcArea td {
            padding: 0;
            border: 0
        }

        .boardView tr.etcArea ul {
            position: relative;
            z-index: 1;
            overflow: hidden;
            width: 100%;
            border-top: 1px solid #f4f4f4
        }

        .boardView tr.etcArea ul li {
            float: left
        }

        .boardView tr.etcArea ul .th {
            float: left;
            padding: 13px 0 13px 20px;
            width: 130px;
            background-color: #f7f5f8
        }

        .boardView tr.etcArea ul .td {
            float: left;
            padding: 13px 0 13px 20px;
            width: 180px
        }

        .table_faq {
            border-top: 1px solid #f4f4f4
        }

        .table_faq tr td {
            padding: 20px 0
        }

        .mypage_wrap .noloop {
            border-top: 1px solid #f4f4f4;
            padding: 150px 0 150px 350px
        }

        .boardWrite2 .smalle {
            position: relative
        }

        .boardWrite2 .smalle input[type=checkbox] {
            position: relative;
            right: 2px;
            vertical-align: middle
        }

        .mypage_wrap .replayD {
            border-top: 1px solid #f4f4f4
        }

        .mypage_wrap .replayD tr td {
            padding: 10px
        }

        .search_bt img {
            float: right
        }

        #Wbtns {
            width: 100%
        }

        .boardWrite2 th {
            text-align: left;
            padding: 15px;
            background: #f7f5f8;
            vertical-align: middle
        }

        .boardWrite2 td {
            padding-left: 5px
        }

        #edits img {
            max-width: none
        }

        #recipe_items {
            width: 100%;
            padding: 10px
        }

        #recipe_view {
            width: 100%
        }

        #recipe_view .items {
            float: left
        }

        #recipe_table .xans-record {
            width: 480px
        }

        #recipe_table .recipe_tr td {
            margin-left: 30px
        }

        #recipe_table .recipe__tb {
            margin-bottom: 40px
        }

        #recipe.wrap {
            padding: 30px 29px
        }

        #rwrite_wrap .stxt {
            line-height: 15px;
            padding: 10px
        }

        #recipe_table .title {
            padding: 24px 24px 24px 40px;
            line-height: 27px;
            text-align: left
        }

        #recipe_table .title p {
            font-size: 16px;
            padding-left: 3px
        }

        #recipe_table .title a h2 {
            font-size: 26px
        }

        #recipe_table .title .Pline {
            background: #5f0080;
            width: 16px;
            height: 2px;
            position: relative;
            top: 25px;
            right: 20px
        }

        #rwrite_wrap .img_tb {
            margin-top: 10px;
            margin-left: 20px
        }

        .bhs_button {
            width: 150px;
            display: inline-block;
            line-height: 40px;
            text-align: center;
            background-color: #795b8f;
            border: 1px solid #5f0080;
            color: #fff;
            font-size: 15px;
            float: right;
            margin-left: 2px;
            font-size: 13px
        }

        .bhs_button.cancel {
            width: 95px;
            height: 35px;
            line-height: 35px;
            float: none;
            margin-top: 10px
        }

        .bhs_button.cancel:hover {
            width: 95px;
            height: 35px;
            line-height: 35px;
            float: none;
            margin-top: 10px;
            background: #fff;
            color: #5f0080
        }

        .bhs_button:hover {
            width: 150px;
            display: inline-block;
            line-height: 40px;
            text-align: center;
            background-color: #fff;
            border: 1px solid #5f0080;
            color: #5f0080;
            font-size: 15px;
            float: right;
            margin-left: 2px;
            font-size: 13px
        }

        .bhs_buttonsm {
            width: 100px;
            display: inline-block;
            line-height: 30px;
            text-align: center;
            background-color: #795b8f;
            border: 1px solid #5f0080;
            color: #fff;
            font-size: 15px;
            float: right;
            margin-left: 2px;
            font-size: 13px
        }

        .bhs_buttonsm:hover {
            width: 100px;
            display: inline-block;
            line-height: 30px;
            text-align: center;
            background-color: #fff;
            border: 1px solid #5f0080;
            color: #5f0080;
            font-size: 15px;
            float: right;
            margin-left: 2px;
            font-size: 13px
        }

        .goods-list-category-item a.actives {
            font-weight: 700
        }

        .goods-list-category-item a.actives:before {
            width: 35px;
            height: 3px;
            background-color: #57297b;
            display: block;
            content: '';
            position: absolute;
            top: 0;
            left: 0
        }

        .xans-product-additional div.board h2 {
            font-size: 13px;
            font-weight: 700;
            padding-bottom: 5px
        }

        .xans-product-additional table.xans-board-listheader {
            margin: 15px 0 0;
            color: #353535;
            font-size: 12px;
            line-height: 140%;
            table-layout: fixed
        }

        .xans-product-additional table.xans-board-listheaderd td {
            padding: 25px 3px 23px;
            border-top: 1px solid #e3e3e3;
            text-align: center;
            vertical-align: middle;
            height: 65px
        }

        .xans-product-additional table.xans-board-listheader th {
            padding: 25px 0 23px;
            vertical-align: middle;
            font-size: 12px
        }

        .xans-product-additional div.board>.btnArea {
            border-top: 1px solid #6a3664
        }

        .xans-product-additional div.board .btnArea {
            padding: 10px 0;
            text-align: right;
            width: 100%;
            display: table
        }

        .xans-product-additional .btnArea .bhs_button {
            margin: 20px 0 20px 5px
        }

        .xans-product-additional table.board td .view {
            padding: 16px 19px 12px;
            line-height: 18px;
            text-align: left
        }

        .xans-product-additional .sort {
            position: absolute;
            bottom: 0;
            right: 0;
            padding: 10px;
            text-align: right
        }

        .xans-product-additional .title_txt p {
            color: #939393;
            padding-top: 10px;
            padding-left: 10px;
            line-height: 15px
        }

        .xans-product-additional .sort select {
            margin: 0 2px 0 0;
            border: 1px solid #bfbfbf;
            line-height: 34px;
            height: 34px;
            vertical-align: middle;
            padding-bottom: 5px
        }

        .xans-product-additional .sort-wrap {
            position: relative
        }

        .bhs_button.yb:hover {
            background-color: #5f0080;
            color: #fff
        }

        .bhs_button.active:hover {
            background-color: #5f0080;
            color: #fff
        }

        .bhs_button.yb {
            background-color: #795b8f;
            color: #fff
        }

        .bhs_button.ybs {
            background-color: #795b8f;
            color: #fff
        }

        .bhs_button.yb2 {
            background-color: #fff;
            color: #795b8f
        }

        .bhs_button.yb2:hover {
            background-color: #795b8f;
            color: #fff
        }

        .xans-board-title .title_txt p {
            color: #939393;
            padding-top: 10px;
            padding-left: 10px;
            line-height: 15px
        }

        .xans-board-title .sort-wrap {
            padding: 10px;
            text-align: left;
            position: relative
        }

        .xans-board-title .sort {
            right: 0;
            position: absolute;
            bottom: 10px
        }

        .xans-board-title .sort select {
            margin: 0 2px 0 0;
            border: 1px solid #bfbfbf;
            line-height: 34px;
            height: 34px;
            vertical-align: middle;
            padding-bottom: 5px
        }

        .xans-board-title table .thumb img {
            width: 50px;
            float: inherit
        }

        .xans-board-title table td {
            padding: 14px 3px;
            height: 32px;
            text-align: center;
            vertical-align: middle
        }

        .xans-board-title table td.td_title {
            padding: 14px 20px 14px 10px
        }

        .xans-board-title table td.txt_title {
            text-align: left;
            line-height: 18px
        }

        .xans-board-title table a {
            display: table-row
        }

        .xans-board-title table .thumb span {
            float: inherit;
            display: table-cell;
            width: 200px;
            vertical-align: middle;
            line-height: 18px;
            padding: 0 10px;
            text-align: left
        }

        .goods-review-grp-btn {
            text-align: right
        }

        .goods-review-grp-btn .styled-button {
            width: auto;
            min-width: 75px;
            padding: 0 15px;
            height: 30px;
            line-height: 28px;
            font-size: 12px
        }

        .all_review_board {
            position: relative
        }

        .all_review_board .search_bt {
            position: absolute;
            top: 0;
            right: 0
        }

        .all_review_board input[type=image] {
            float: right;
            position: relative
        }

        .all_review_board .linebg {
            height: 34px;
            line-height: 34px;
            width: 220px;
            border: 1px solid #bfbfbf;
            color: #000;
            float: right;
            padding: 4px
        }

        .all_review_board .select {
            float: right;
            width: 120px;
            height: 34px;
            margin: 0 4px 0 0;
            border: 1px solid #bfbfbf;
            line-height: 34px;
            margin-left: 10px;
            vertical-align: middle;
            padding-bottom: 5px
        }

        .all_review_sort {
            border: 0
        }

        .all_review_sort .input_txt {
            padding: 11px 0;
            text-align: left
        }

        .all_review_sort .kind_sort {
            padding: 14px 0
        }

        .all_review_sort .kind_sort select {
            margin-right: 0
        }

        .service .layout-wrapper {
            background: #fff;
            padding: 20px;
            line-height: 17px
        }

        .service .btn_history {
            text-align: center;
            margin-top: 30px
        }

        .service .btn_history .bhs_button:hover {
            display: block;
            float: none;
            width: 280px;
            margin: 10px auto 0;
            background-color: #5f0080;
            color: #fff
        }

        .service .btn_history .bhs_button {
            display: block;
            width: 280px;
            float: none;
            line-height: 40px;
            text-align: center;
            border: 1px solid #5f0080;
            color: #5f0080;
            font-size: 13px;
            margin: 10px auto 0;
            background-color: #fff
        }

        .btn-qna {
            width: auto;
            min-width: 75px;
            padding: 0 15px;
            height: 30px;
            line-height: 28px;
            font-size: 12px;
            background-color: #fff;
            display: inline-block;
            color: #5f0080;
            border: 1px solid #5f0080;
            text-align: center
        }

        .styled-checkbox-black:checked {
            background: url(https://res.kurly.com/pc/etc/old/images/common/checkbox.png) no-repeat;
            background-position: 3px 2px
        }

        .styled-checkbox-black {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            width: 16px;
            height: 16px;
            background-color: transparent;
            border: 1px solid #212121;
            vertical-align: middle;
            background-repeat: no-repeat;
            background-position: 50% 50%;
            background-size: 10px 7px;
            margin-right: 5px
        }

        .dates .left {
            position: relative;
            right: 15px;
            color: #bfbfbf;
            width: 23px
        }

        .detail_wrap_outer h2,.detail_product h2,.with_item h2 {
            font-size: 13px;
            font-weight: 700;
            padding-bottom: 20px
        }

        .xans-element-.xans-myshop.xans-myshop-couponserial td#contents span {
            line-height: 25px
        }

        .xans-element-.xans-myshop.xans-myshop-couponserial td#contents p {
            line-height: 25px
        }

        .xans-element-.xans-myshop.xans-myshop-couponserial td#contents .board_view_content {
            line-height: 25px
        }

        .xans-element-.xans-myshop.xans-myshop-couponserial td#contents .board_view_content div {
            line-height: 25px
        }

        .xans-element-.xans-myshop.xans-myshop-couponserial .eng {
            display: none
        }

        .goods-list-item-content.soldout {
            padding: 10px 10px 10px 70px;
            background: url(https://res.kurly.com/pc/etc/old/images/common/soldout.png) no-repeat 0 10px;
            background-size: 60px 60px
        }

        .product_detail_info {
            clear: both;
            padding-top: 50px;
            border-top: 1px solid #000;
            margin-top: 100px;
            overflow: hidden
        }

        .product_detail_info table th {
            color: #000;
            font-weight: 400;
            vertical-align: top;
            text-align: left;
            padding: 20px 0;
            width: 100px;
            padding-left: 40px!important
        }

        .product_detail_info table td {
            width: 315px;
            padding: 20px;
            color: #858585
        }

        .product_detail_info table td {
            line-height: 1.75
        }

        .product_detail_info_center {
            width: 50px!important;
            border: 0
        }

        .product_detail_info_border_top {
            border-top: solid 1px #b49ab1
        }

        .product_detail_info_border_bottom {
            border-bottom: solid 1px #b49ab1
        }

        #means_inp {
            width: 360px;
            padding: 10px
        }

        .txt_operate {
            text-align: right
        }

        .txt_operate span {
            display: inline-block;
            width: 150px;
            padding: 6px 10px;
            border: 1px solid #795c90;
            text-align: center;
            font-size: 12px
        }

        .btn_tooltip {
            display: inline-block;
            margin-left: 5px;
            vertical-align: middle
        }

        .tooltip_area {
            position: absolute;
            top: 2px;
            left: 160px;
            background: #fff;
            border: 1px solid silver;
            padding: 10px
        }

        .tit_coupon_area {
            position: relative
        }

        .txt_coupon_type1,.txt_coupon_type2 {
            display: none;
            position: absolute;
            z-index: 100;
            top: 48px;
            left: 0;
            width: 248px;
            background: #fff;
            padding: 10px;
            border: 1px solid #ebebeb
        }

        .btn_starbox {
            display: inline-block;
            width: 198px;
            height: 32px;
            border: 1px solid #5f0080;
            background: #795c90;
            text-align: center;
            line-height: 30px;
            color: #fff
        }

        .btn_postscript {
            display: block;
            width: 73px;
            height: 23px;
            border: 1px solid #5f0080;
            background: #795b8f;
            color: #fff;
            line-height: 21px;
            text-align: center;
            font-size: 11px
        }

        .btn_postscript:hover {
            background: #fff;
            color: #5f0080
        }

        .connect_way {
            width: 100%;
            height: 48px;
            background: #f9f9f9;
            text-align: center
        }

        .connect_way p {
            width: 100%;
            height: 100%;
            border: 1px solid #efefef;
            line-height: 48px
        }

        .connect_way p:before,.connect_way p:after {
            content: " ";
            display: inline-block;
            width: 4px;
            height: 4px;
            margin: 0 7px;
            background: url(https://res.kurly.com/pc/etc/old/images/common/ico_bullet.gif) left center;
            vertical-align: middle
        }

        .txt_red {
            color: red
        }

        .goods_txt_hide {
            font-size: 0;
            line-height: 0;
            visibility: hidden
        }

        .goods_txt_hide {
            font-size: 0;
            line-height: 0;
            visibility: hidden
        }

        .daily_desc {
            width: 1010px;
            margin: 0 auto;
            padding: 0 45px;
            font-weight: 200;
            font-family: noto sans
        }

        .daily_desc .daily_box {
            margin-top: 70px;
            letter-spacing: .045em
        }

        .daily_desc .daily_box .pic:first-child {
            padding: 0
        }

        .daily_desc .pic {
            margin-top: 30px
        }

        .daily_desc .daily_box .words {
            margin-top: 25px;
            font-size: 18px;
            line-height: 33px;
            color: #373737
        }

        .daily_desc .product_box .words {
            margin-top: 25px;
            font-size: 20px;
            line-height: 36px;
            letter-spacing: .045em
        }

        .daily_desc .product_box {
            margin-top: 0;
            margin-bottom: 140px
        }

        .daily_desc .daily_box .tit_section {
            margin-top: 180px;
            line-height: 40px;
            text-align: center;
            font-family: noto sans
        }

        .daily_desc .daily_box .tit_section small {
            line-height: 60px;
            font-weight: 400
        }

        .daily_desc .tit_section {
            margin-top: 60px;
            font-size: 30px;
            display: block;
            font-weight: 700
        }

        .daily_desc .tbl_box .tbl_goodsDetail {
            margin-top: 26px;
            margin-bottom: 140px
        }

        .daily_desc .tbl_box .tbl_goodsDetail th {
            padding: 20px 10px;
            font-size: 20px;
            font-weight: 400;
            text-align: center;
            border-left: 1px solid #d7d7d7;
            border-right: 1px solid #d7d7d7;
            border-bottom: 1px solid #d7d7d7
        }

        .daily_desc .tbl_box .tbl_goodsDetail td {
            padding: 20px;
            font-size: 20px;
            line-height: 26px;
            text-align: left;
            font-weight: 400
        }

        .daily_desc .tbl_goodsDetail caption {
            display: none
        }

        .daily_desc .tbl_goodsDetail thead th {
            background: #787b80;
            color: #fff;
            font-weight: 400;
            border-top: 1px solid #d7d7d7
        }

        .daily_desc .tbl_goodsDetail thead th,.daily_desc .tbl_goodsDetail tbody td {
            border-right: 1px solid #d7d7d7;
            border-bottom: 1px solid #d7d7d7
        }

        .daily_desc .tbl_goodsDetail thead tr th:nth-child(1),.daily_desc .tbl_goodsDetail thead tr th:nth-child(2),.daily_desc .tbl_goodsDetail thead tr th:nth-child(3) {
            font-size: 22px;
            line-height: 36px;
            background-color: #e1e1e1;
            color: #444
        }

        .daily_desc .tbl_goodsDetail thead tr:first-child th:nth-child(1) {
            width: 230px
        }

        .daily_desc .tbl_goodsDetail thead tr:first-child th:nth-child(2) {
            width: 415px
        }

        .daily_desc .tbl_goodsDetail thead tr:first-child th:nth-child(3) {
            width: 415px
        }

        .daily_desc .link_goods {
            float: right;
            font-size: 16px;
            color: #7a32b1;
            letter-spacing: 0
        }

        .daily_desc .link_goods span {
            font-family: dotum,돋움;
            font-weight: 700
        }

        .daily_desc .goods_current {
            font-size: 16px
        }

        .daily_desc .daily_goodsInfo {
            margin: 140px auto 0
        }

        .daily_desc .daily_goodsInfo .row {
            margin-top: 100px;
            padding: 0;
            font-size: 18px;
            line-height: 32px;
            color: #373737
        }

        .daily_desc .daily_goodsInfo .row:first-child {
            border-top: none
        }

        .daily_desc .daily_goodsInfo .tit_area {
            display: block;
            margin-bottom: 140px;
            text-align: center
        }

        .daily_desc .daily_goodsInfo .info_list {
            margin-top: 28px
        }

        .daily_desc .daily_goodsInfo .info_list li {
            overflow: hidden;
            margin-top: 25px
        }

        .daily_desc .daily_goodsInfo .info_list li:first-child {
            margin-top: 0
        }

        .daily_desc .daily_goodsInfo .info_list strong {
            float: left;
            position: relative;
            display: inline-block;
            width: 100%;
            padding-left: 30px;
            word-break: break-all
        }

        .daily_desc .daily_goodsInfo .info_list strong:before {
            content: " ";
            position: absolute;
            top: 3px;
            left: 0;
            display: block;
            width: 26px;
            height: 26px;
            background: url(https://res.kurly.com/images/common/old/icon/ico_check.jpg) no-repeat
        }

        .daily_desc .daily_goodsInfo .info_list p {
            float: left;
            width: 834px;
            word-break: break-all
        }

        .daily_desc .daily_goodsInfo .tit_daily {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 30px;
            width: 100%;
            font-weight: 400;
            font-weight: 700;
            font-family: noto sans;
            color: #666
        }

        .daily_desc .daily_goodsInfo .tit_daily span {
            position: relative;
            z-index: 10;
            display: inline-block;
            padding-right: 15px;
            background: #fff
        }

        .daily_desc .daily_goodsInfo .tit_daily:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 20px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .daily_desc .daily_goodsInfo .md_name {
            margin: 20px 0
        }

        .daily_desc .daily_goodsInfo .md_name p {
            display: inline-block;
            border-bottom: 1px solid #b1b1b1
        }

        .daily_desc .daily_goodsInfo .md_name p strong {
            font-weight: 400
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2 {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 30px;
            width: 100%;
            font-weight: 400;
            font-weight: 700;
            font-family: noto sans;
            color: #666
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2 span {
            display: inline-block;
            background: #fff;
            padding-right: 5px
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 37px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2 .md_name {
            display: inline-block;
            position: relative;
            z-index: 10;
            margin: 20px 0;
            background: #fff
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2 .md_name p {
            display: inline-block;
            padding-right: 8px;
            font-size: 20px;
            border: 0
        }

        .daily_desc .daily_goodsInfo .tit_daily.type2 .md_name p strong {
            font-weight: 400
        }

        .tr_line .user_name {
            display: inline-block;
            text-align: center;
            color: #522474
        }

        .tr_line .user_name:hover {
            text-decoration: underline
        }

        .tr_line .user_name .btn_userReview {
            display: none;
            position: absolute;
            top: 17px;
            left: 36px;
            width: 81px;
            height: 24px;
            background: #fff;
            color: #4c4c4c;
            border: 1px solid #aaa;
            line-height: 20px;
            text-align: center;
            font-size: 11px
        }

        .info_review {
            border: 1px solid #ddd;
            margin-bottom: 20px;
            padding: 20px
        }

        .info_review strong {
            display: inline-block;
            margin-top: 20px
        }

        .info_review strong:first-child {
            margin-top: 0
        }

        .info_review p {
            margin-top: 5px;
            line-height: 20px
        }

        .daily_goodsTit {
            display: block;
            margin-top: 15px;
            padding-bottom: 35px;
            font-size: 38px;
            text-align: center;
            border-bottom: 1px solid #c1c1c1;
            color: #666;
            font-weight: 400;
            font-weight: 700;
            font-family: noto sans kr medium
        }

        .daily_goodsTit span {
            display: block;
            font-size: 24px;
            margin-bottom: 15px
        }

        .daily_main_bn {
            overflow: hidden;
            width: 1050px;
            height: 287px;
            margin: 0 auto 23px
        }

        .goods-list-sort-area {
            top: 0;
            right: 40px
        }

        .bn_area {
            width: 1050px;
            margin-bottom: 20px;
            text-align: center
        }

        table.tbl_newtype1 tr:hover {
            background-color: #f7f7f7
        }

        .xans-product-additional table.tbl_newtype1 td {
            height: auto;
            padding: 22px 3px 23px
        }

        .xans-product-additional table.tbl_newtype1 td.user_grade {
            padding: 22px 0 23px;
            line-height: 19px;
            text-align: left
        }

        .xans-board-title table.tbl_newtype1 td.user_grade {
            padding: 0;
            line-height: 19px;
            text-align: left
        }

        #recipe .recipe_item {
            width: 480px;
            height: 550px;
            margin-bottom: 30px;
            border: 1px solid #f4f4f4
        }

        #recipe .recipe_item .tit_recipe {
            width: 480px;
            height: 70px;
            padding: 25px 0 25px 30px;
            text-align: left;
            font-size: 22px;
            line-height: .6
        }

        #recipe .recipe_item img {
            border-bottom: 1px solid #f4f4f4
        }

        .info_inquire {
            padding-bottom: 10px
        }

        .review_photo img {
            display: block;
            max-width: 600px;
            margin: 0 auto
        }

        .goods_wrap {
            width: 1010px;
            margin: 0 auto;
            font-family: noto sans;
            font-weight: 200;
            letter-spacing: 0
        }

        .goods_wrap .context .words {
            margin-top: 55px;
            font-size: 18px;
            line-height: 32px;
            color: #373737
        }

        .goods_wrap .goods_intro .context h3 {
            display: block;
            margin: 75px 0 0;
            padding-bottom: 35px;
            font-size: 38px;
            line-height: 46px;
            text-align: center;
            border-bottom: 1px solid #c1c1c1;
            color: #666
        }

        .goods_wrap .goods_intro .context h3 small {
            display: block;
            font-size: 24px;
            margin-bottom: 14px;
            line-height: 15px
        }

        .goods_wrap .goods_intro .context .words {
            margin-top: 28px
        }

        .goods_wrap .goods_checklist {
            margin-top: 130px
        }

        .goods_wrap .goods_checklist h3 {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 30px;
            width: 100%;
            font-weight: 400;
            font-family: noto sans;
            font-weight: 700;
            color: #666
        }

        .goods_wrap .goods_checklist h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            padding-right: 15px;
            background: #fff
        }

        .goods_wrap .goods_checklist h3:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 20px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .goods_wrap .info_list {
            margin-top: 28px
        }

        .goods_wrap .info_list li {
            overflow: hidden;
            margin-top: 25px;
            overflow: hidden;
            margin-top: 25px;
            padding-left: 30px
        }

        .goods_wrap .info_list strong {
            float: left;
            position: relative;
            display: inline-block;
            width: 100%
        }

        .goods_wrap .info_list strong:before {
            content: " ";
            position: absolute;
            top: 3px;
            left: -30px;
            display: block;
            width: 26px;
            height: 26px;
            background: url(/shop/data/images/kurly_fied/ico_check.jpg) no-repeat
        }

        .goods_wrap .info_list p {
            float: left;
            width: 834px
        }

        .goods_wrap .goods_tip {
            margin-bottom: 170px
        }

        .goods_wrap .goods_tip h3 {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 30px;
            padding-left: 48px;
            font-weight: 700;
            font-family: noto sans;
            font-weight: 700;
            color: #666;
            letter-spacing: 1px
        }

        .goods_wrap .goods_tip h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            padding: 0 10px;
            font-size: 36px;
            background: #fff;
            text-shadow: 2px 0
        }

        .mac_os .goods_wrap .goods_tip h3 span {
            text-shadow: 0 0
        }

        .goods_wrap .goods_tip .tip_box {
            margin-top: -15px;
            border: 1px solid #b9b9b9
        }

        .goods_wrap .goods_tip .tip_box .context {
            margin: 60px 62px
        }

        .goods_wrap .goods_tip .pic:first-child {
            margin-top: 0
        }

        .goods_wrap .tip_box strong {
            display: block;
            font-size: 25px;
            line-height: 38px;
            margin-bottom: 10px
        }

        .goods_wrap .tip_box .context .words {
            margin: 0;
            font-size: 18px;
            line-height: 32px
        }

        .goods_wrap .tip_box .context .words .bullet {
            font-size: 18px;
            line-height: 32px
        }

        .goods_wrap .tip_box .context .pic {
            margin: 66px 0
        }

        .goods_wrap .tip_box .context .words i {
            display: inline-block;
            padding-left: 10px;
            font-style: normal;
            text-indent: -14px
        }

        .goods_wrap .tip_box .context .words b {
            font-weight: 400;
            font-family: noto sans
        }

        .goods_wrap .goods_pick h3,.goods_point h3 {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 50px;
            width: 100%;
            margin-bottom: 70px;
            font-weight: 700;
            font-family: noto sans;
            font-weight: 700;
            color: #666
        }

        .goods_point h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            margin-left: 260px;
            padding: 0 15px;
            background: #fff;
            text-shadow: 2px 0
        }

        .mac_os .goods_point h3 span {
            text-shadow: 0 0
        }

        .goods_wrap .goods_pick h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            margin-left: 354px;
            padding: 0 15px;
            background: #fff;
            text-shadow: 2px 0
        }

        .mac_os .goods_wrap .goods_pick h3 span {
            text-shadow: 0 0
        }

        .goods_wrap .goods_pick h3:before,.goods_point h3:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 28px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .goods_point h3:before {
            width: 1010px
        }

        .goods_wrap .goods_pick .context {
            margin-bottom: 130px
        }

        .goods_wrap .goods_pick .pick_items {
            display: block;
            margin-top: 24px
        }

        .goods_wrap .goods_pick .words+.pic {
            margin-top: 80px
        }

        .goods_wrap .goods_recipe h3 {
            display: block;
            font-family: noto sans;
            font-weight: 700;
            padding-bottom: 70px;
            font-size: 50px;
            line-height: 46px;
            text-align: center;
            color: #666
        }

        .goods_wrap .goods_recipe .recipe_tit {
            display: block;
            padding-bottom: 30px;
            font-family: noto sans;
            font-weight: 700;
            color: #666;
            text-shadow: 2px 0
        }

        .mac_os .goods_wrap .goods_recipe .recipe_tit {
            text-shadow: 0 0
        }

        .goods_wrap .goods_recipe .recipe_item_tit {
            display: block;
            padding-bottom: 20px;
            font-size: 24px;
            font-family: noto sans;
            font-weight: 700;
            color: #666;
            text-shadow: 1px 0
        }

        .mac_os .goods_wrap .goods_recipe .recipe_item_tit {
            text-shadow: 0 0
        }

        .goods_wrap .goods_recipe .recipe_product {
            display: inline-block;
            border-top: 1px solid #b1b1b1;
            padding-top: 30px;
            min-width: 342px;
            font-size: 34px;
            line-height: 38px;
            font-weight: 400;
            text-shadow: 1px 0
        }

        .mac_os .goods_wrap .goods_recipe .recipe_product {
            text-shadow: 0 0
        }

        .goods_wrap .goods_recipe .context h3 small.recipe_product {
            font-weight: 400;
            font-size: 34px;
            margin-bottom: 14px;
            line-height: 15px
        }

        .goods_wrap .recipe_area .recipe_item {
            display: block;
            margin-top: 60px;
            color: #666;
            font-size: 24px;
            font-family: noto sans
        }

        .goods_wrap .goods_note h3 {
            display: inline-block;
            position: relative;
            z-index: 10;
            font-size: 50px;
            width: 100%;
            margin-bottom: 70px;
            font-family: noto sans;
            font-weight: 700;
            color: #666;
            text-shadow: 2px 0
        }

        .mac_os .goods_wrap .goods_note h3 {
            text-shadow: 0 0
        }

        .goods_wrap .goods_note h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            padding-right: 8px;
            background: #fff
        }

        .goods_wrap .goods_note h3:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 28px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .goods_wrap .goods_note .sub_tit {
            line-height: 38px
        }

        .goods_wrap .goods_note .context {
            margin-bottom: 130px
        }

        .goods_wrap .goods_note .words {
            margin-top: 0
        }

        .goods_wrap .goods_note .pic {
            margin-bottom: 55px
        }

        .goods_wrap .about_brand h3 {
            display: inline-block;
            position: relative;
            z-index: 10;
            width: 100%;
            margin-bottom: 70px;
            font-size: 50px;
            font-family: noto sans;
            font-weight: 700;
            color: #666
        }

        .goods_wrap .about_brand h3 span {
            position: relative;
            z-index: 10;
            display: inline-block;
            margin-left: 341px;
            padding: 0 15px;
            background: #fff;
            text-shadow: 2px 0
        }

        .mac_os .goods_wrap .about_brand h3 span {
            text-shadow: 0 0
        }

        .goods_wrap .about_brand h3:before {
            content: " ";
            position: absolute;
            z-index: 1;
            top: 28px;
            width: 100%;
            height: 1px;
            background: #b9b9b9
        }

        .about_brand h3:before {
            width: 1010px
        }

        .goods_wrap .about_brand .context {
            margin-bottom: 130px
        }

        .goods_wrap .about_brand .context.last {
            margin-bottom: 170px
        }

        .goods_wrap .about_brand .context .pic {
            margin-bottom: 60px
        }

        .goods_wrap .about_brand .context .words {
            margin: 0 0 100px
        }

        .goods_wrap .pic+.pic {
            margin-top: 40px
        }

        .goods_wrap .sub_tit {
            display: block;
            margin-bottom: 20px;
            font-size: 30px;
            line-height: 38px
        }

        .goods_wrap .order_num {
            display: table-cell;
            width: 50px
        }

        .goods_wrap .option_tit {
            display: table-cell
        }

        .goods_wrap .context {
            margin-bottom: 130px
        }

        .goods_wrap .context.last {
            margin-bottom: 170px
        }

        .goods_wrap .goods_desc .context .words+.words {
            margin-top: 40px
        }

        .goods_wrap .goods_tip .tip_box .words+.words {
            margin-top: 30px
        }

        .goods_wrap .goods_recipe .context .words+.words {
            margin-top: 60px
        }

        .event_item_tit {
            display: block;
            margin: 10px 0 6px;
            font-family: noto sans;
            font-size: 20px;
            line-height: 1.4
        }

        .event_item_desc {
            margin-bottom: 20px;
            font-size: 14px;
            line-height: 20px
        }

        .event_term {
            font-size: 14px;
            line-height: 20px
        }

        .event_caution li::before {
            content: ""
        }

        .event_term dl.event_term {
            width: 100%;
            overflow: hidden;
            padding: 0;
            margin: 0;
            font-size: 12px
        }

        .event_term dt {
            display: block;
            font-family: noto sans;
            padding-top: 3px;
            font-weight: 700;
            font-size: 15px;
            line-height: 17px
        }

        .event_term dd {
            display: inline-block;
            font-family: noto sans;
            font-weight: 200;
            padding: 0;
            margin-bottom: 6px
        }

        .button_area .showSingle {
            padding: 10px;
            text-align: center;
            background-color: #fff;
            color: #5f0080;
            border: 1px solid #5f0080
        }

        .button_area .showSingle.selected {
            background-color: #5f0080;
            color: #fff
        }

        .certification_area {
            display: block;
            margin: 0 46px 20px
        }

        .certification_area .button_area {
            text-align: center
        }

        .certification_area .button_area button {
            padding: 10px;
            text-align: center;
            background-color: #fff;
            color: #5f0080;
            border: 1px solid #5f0080;
            font-family: noto sans;
            font-weight: 200
        }

        .goods_wrap .goods_video {
            margin: 0 auto 170px;
            display: block
        }

        .bnr_viewevent {
            position: relative;
            width: 814px;
            padding: 0 0 48px;
            margin: 0 auto;
            text-align: center
        }

        .bnr_viewevent img {
            vertical-align: top
        }

        .bnr_viewevent .bnr_thumb {
            display: block;
            margin: 0 auto
        }

        .bnr_viewevent .btn {
            overflow: hidden;
            position: absolute;
            top: 75px;
            right: 48px;
            width: 33px;
            height: 20px;
            background: url(/shop/data/images/icon/ico_view_bnr_event.png) no-repeat 0 0;
            font-size: 0;
            line-height: 0;
            text-indent: -9999px
        }

        .bnr_viewevent .btn_close {
            background-position: 0 -50px
        }

        .bnr_viewevent .view_event {
            display: none;
            width: 810px;
            margin-left: 4px;
            border: 2px solid #c4c4c4;
            font-family: noto sans;
            font-weight: 200;
            text-align: center;
            border-top: 0;
            color: #2f2f2f;
            text-align: center
        }

        .bnr_viewevent .view_event b,.bnr_viewevent .view_event em {
            font-family: noto sans;
            font-weight: 700;
            font-style: normal
        }

        .bnr_viewevent .view_event .tit {
            padding-top: 48px;
            margin-bottom: -3px;
            font-size: 20px;
            line-height: 29px;
            letter-spacing: -1px
        }

        .bnr_viewevent .view_event .time {
            width: 674px;
            margin: 0 auto 48px;
            padding: 13px 0 14px;
            border-top: 1px solid #ceced0;
            border-bottom: 1px solid #ceced0;
            font-size: 19px;
            line-height: 25px;
            font-family: noto sans;
            font-weight: 700;
            letter-spacing: -1px
        }
        .bnr_viewevent .view_event .event_notice {
            padding: 36px 64px 30px;
            background-color: #e0e0e0;
            text-align: left
        }

        .bnr_viewevent .view_event .event_notice span {
            padding-left: 10px;
            text-indent: -10px
        }

        .bnr_viewevent .view_event .tit_notice {
            display: block;
            overflow: hidden;
            width: 129px;
            height: 28px;
            margin: 0 0 9px 4px;
            background: url(/shop/data/images/icon/ico_view_bnr_event.png) no-repeat 0 -100px;
            font-size: 0;
            line-height: 0;
            text-indent: -9999px
        }

        .bnr_viewevent .view_event .desc i {
            display: inline-block;
            padding-left: 10px;
            text-indent: -10px;
            text-decoration: none;
            font-style: normal
        }

        .bnr_viewevent .view_event .desc {
            font-size: 15px;
            line-height: 27px;
            letter-spacing: -1px
        }

        .bnr_viewevent .view_event .desc b {
            font-family: noto sans;
            font-weight: 700
        }

        .bnr_viewevent .view_event font {
            font-size: 20px
        }

        .bnr_viewevent .view_event font[size="1"] {
            font-size: 11px
        }

        .bnr_viewevent .view_event font[size="2"] {
            font-size: 12px
        }

        .bnr_viewevent .view_event font[size="3"] {
            font-size: 13px
        }

        .bnr_viewevent .view_event font[size="4"] {
            font-size: 14px
        }

        .bnr_viewevent .view_event font[size="5"] {
            font-size: 15px
        }

        .bnr_viewevent .view_event font[size="6"] {
            font-size: 16px
        }

        .bnr_viewevent .view_event font[size="7"] {
            font-size: 17px
        }

        .bnr_goodsview {
            padding-top: 74px
        }

        .bnr_goodsview .bnr_viewnotice {
            width: 810px;
            padding-bottom: 120px;
            margin: 0 auto;
            text-align: center;
            margin-top: -14px
        }

        .view_recipe {
            padding: 150px 10px 10px
        }

        .btn_exchange {
            margin-top: 23px
        }

        .bnr_goodsview+.bnr_goodsview {
            padding-top: 0
        }

        .bnr_goodsview .notice_gift {
            width: 810px;
            padding-bottom: 120px;
            margin: 0 auto;
            text-align: center;
            margin-top: -14px
        }

        .bnr_goodsview .notice_gift img {
            display: block;
            margin: 0 auto
        }

        .goods-add-product .goods-add-product-item-name {
            overflow: hidden;
            width: 100%;
            height: 35px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            word-wrap: break-word
        }

        table.extra-information {
            background: #e0e0e0;
            margin: 30px 0 60px;
            width: 100%!important
        }

        table.extra-information th,table.extra-information td {
            font-weight: 400;
            text-align: left;
            padding-left: 15px;
            background: #fff;
            font-family: Dotum;
            font-size: 11px;
            height: 28px;
            padding: 5px 0 5px 10px;
            border-width: 1px;
            line-height: 20px
        }

        table.extra-information th {
            width: 15%;
            background: #f5f5f5;
            color: #515151
        }

        table.extra-information td {
            width: 35%;
            color: #666
        }

        .product_detail_info table td {
            line-height: 1.75
        }

        #goodsNotice {
            position: relative;
            width: 740px;
            margin: 51px auto 0;
            padding-bottom: 120px;
            font-family: noto sans;
            letter-spacing: 0
        }

        #goodsNotice .goods_notice {
            padding: 28px 56px 33px;
            border: 1px solid #b9b9b9
        }

        #goodsNotice .goods_notice:after {
            content: "";
            display: block;
            overflow: hidden;
            clear: both
        }

        #goodsNotice .tit {
            overflow: hidden;
            position: absolute;
            left: 48px;
            top: -17px;
            max-width: 90%;
            padding: 0 10px 0 9px;
            background-color: #fff;
            font-size: 28px;
            color: #666;
            line-height: 32px;
            white-space: nowrap
        }

        #goodsNotice .desc {
            overflow: hidden;
            padding-top: 7px;
            font-size: 16px;
            color: #333;
            line-height: 26px
        }

        #goodsNotice .thumb {
            float: left;
            margin: 1px 50px 0 0;
            background-color: #eee
        }

        #goodsNotice .thumb_item {
            display: block;
            width: 170px
        }

        #goodsNotice .no_thumb .desc {
            padding-top: 3px
        }

        #showCertify {
            padding: 22px 0 20px
        }

        #showCertify img {
            display: block
        }

        #showCertify .inner_certify {
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd
        }

        #showCertify .tit_certify {
            display: block;
            overflow: hidden;
            position: relative;
            padding: 18px 20px
        }

        #showCertify .tit_certify .ico {
            float: left;
            width: 40px;
            height: 28px;
            background: url(https://res.kurly.com/pc/service/goods/1904/ico_certify.png) no-repeat 50% 50%
        }

        #showCertify .tit_certify .txt {
            display: block;
            overflow: hidden;
            padding: 3px 66px 0 19px;
            font-weight: 700;
            font-size: 16px;
            color: #333;
            line-height: 20px;
            letter-spacing: -.3px
        }

        #showCertify .tit_certify .btn {
            position: absolute;
            right: 0;
            top: -1px;
            width: 66px;
            height: 66px;
            background: url(https://res.kurly.com/pc/service/goods/1904/btn_certify.png) no-repeat 50% 50%;
            -webkit-transform: rotate(-180deg);
            -ms-transform: rotate(-180deg);
            -o-transform: rotate(-180deg);
            transform: rotate(-180deg);
            transition: transform ease .5s
        }

        #showCertify .on .tit_certify .btn {
            transition: transform ease .5s;
            -webkit-transform: rotate(0deg);
            -ms-transform: rotate(0deg);
            -o-transform: rotate(0deg);
            transform: rotate(0deg)
        }

        #showCertify .thumb_certify {
            overflow: hidden;
            background-color: #f7f7f7
        }

        #showCertify .view_certify {
            float: left;
            width: 718px;
            margin: 39px 0;
            padding-left: 20px
        }

        #showCertify .view_certify .thumb {
            width: 100%;
            height: 0;
            text-align: center;
            opacity: 0
        }

        #showCertify .view_certify img {
            margin: 0 auto;
            box-shadow: 2px 2px 7px 0 rgba(0,0,0,.15)
        }

        #showCertify .view_certify img.off {
            box-shadow: none
        }

        #showCertify .page_certify {
            position: relative;
            float: right;
            width: 154px;
            padding: 35px 56px 40px 0
        }

        #showCertify .page_certify .page {
            overflow: hidden;
            position: relative;
            width: 100%
        }

        #showCertify .page_certify .list {
            position: absolute;
            right: 0;
            top: 4px
        }

        #showCertify .page_certify li {
            display: block;
            width: 92px;
            margin: 0 auto 10px;
            border: 1px solid #ddd
        }

        #showCertify .page_certify li a {
            display: block;
            overflow: hidden;
            width: 100%
        }

        #showCertify .page_certify .on {
            width: 98px;
            margin: -3px auto 7px;
            border: 4px solid #5f0080;
            box-shadow: 1px 1px 4px 0 rgba(81,39,114,.5)
        }

        #showCertify .page_certify .btn {
            display: none;
            overflow: hidden;
            position: absolute;
            left: 3px;
            width: 92px;
            height: 40px;
            background: url(https://res.kurly.com/pc/service/goods/1904/ico_certify_page.png) no-repeat 50% 50%;
            border: 0;
            font-size: 0;
            line-height: 0;
            text-indent: -9999px
        }

        #showCertify .page_certify .btn_prev {
            top: 0
        }

        #showCertify .page_certify .btn_next {
            bottom: -1px;
            -webkit-transform: rotate(-180deg);
            -ms-transform: rotate(-180deg);
            -o-transform: rotate(-180deg);
            transform: rotate(-180deg)
        }

        @media only screen and (-webkit-min-device-pixel-ratio: 1.5),only screen and (min-device-pixel-ratio:1.5),only screen and (min-resolution:1.5dppx) {
            #showCertify .tit_certify .ico {
                background-image:url(https://res.kurly.com/pc/service/goods/1904/ico_certify_x2.png);
                background-size: 40px 28px
            }

            #showCertify .tit_certify .btn {
                background-image: url(https://res.kurly.com/pc/service/goods/1904/btn_certify_x2.png);
                background-size: 66px 66px
            }

            #showCertify .page_certify .btn {
                background-image: url(https://res.kurly.com/pc/service/goods/1904/ico_certify_page_x2.png);
                background-size: 92px 40px
            }
        }

        #qnaNotice {
            padding-bottom: 20px;
            font: 12px/20px 'Noto Sans';
            color: #4c4c4c
        }

        #qnaNotice .tit {
            display: block;
            padding: 4px 0 10px;
            font-size: 12px;
            line-height: 20px;
            font-family: noto sans;
            font-weight: 700
        }

        #qnaNotice .list {
            padding-top: 10px
        }

        #qnaNotice dt {
            font-family: noto sans;
            font-weight: 700
        }

        #qnaNotice .list span {
            display: block;
            position: relative;
            padding-left: 9px
        }

        #qnaNotice .list span:before {
            content: "- ";
            position: absolute;
            left: 0;
            top: 0
        }

        #qnaNotice .list .info {
            color: #5f0080
        }

        .goods-view-form-table .opt_goods {
        }


    </style>
</head>
<body>

<jsp:include page="/front/header.jsp"></jsp:include>
<div id="container">
    <div id="content">
    <jsp:include page="/front/nav.jsp"></jsp:include>
        <div class="section-view">
            <div class="inner-view">
                <div class="thumb" style="background-image: url(../../../css/product-img.png);">
                    <img src="/css/product-img.png" alt="상품 대표 이미지" class="bg">
                </div>
                <p class="goods-name">
                    <strong class="name">여기에 상품 이름 들어갑니다요</strong>
                    <span class="simple-content">여기는 간단한 설명이 들어가지요</span>
                </p>
                <p class="goods-price">
                    <span class="position">
                        <span class="price"><span id="basic-price">3,900</span>
                                <span class="won">원</span>
                            </span>
                    </span>
                </p>
                <div class="goods-info">
                    <dl class="list-fst">
                        <dt class="tit">상품 카테고리</dt>
                        <dd class="desc">간식</dd>
                    </dl>
                    <dl class="list">
                        <dt class="tit">상품 유통기한</dt>
                        <dd class="desc">수령일 포함 최대 146일 남은 제품을 보내드립니다</dd>
                    </dl>
                </div>
                <div id="cartPut">
                    <div class="cart-option cartList cart-type2">
                        <div class="inner-option">
                            <div class="in-option">
                                <div class="list-goods">
                                    <ul class="list list-nopackage">
                                        <li class="on">
                                            <span class="btn-position">
                                                <button type="button" class="btn-del">
                                                    <span class="txt">삭제하기</span>
                                                </button>
                                            </span>
                                            <span class="name">[윤솜씨] 전통 육포 이야기 (40g) </span>
                                            <span class="tit-item">구매수량</span>
                                            <div class="option">
                                                <span class="count">
                                                    <button type="button" class="btn down on" onclick='count("minus")'
                                                            value='-'>수량내리기</button>
                                                    <div id="result">1</div>
                                                    <button type="button" class="btn up on" onclick='count("plus")'
                                                            value='+'>수량올리기</button>
                                                </span>
                                                <span class="price">
                                                <span class="dc-price">할인 금액 적는 칸입니다</span>
                                            </span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="holidayDeliveryInfo" class="holiday-delivery"></div> <!---->
                                <div class="total">
                                    <div class="price"><!----> <strong class="tit">총 상품금액 :</strong>
                                        <span class="sum">
                                    <span class="num" id="total-price">3,900</span>
                                    <span class="won">원</span>
                                </span>
                                    </div>
                                    <p class="txt-point">
                                        <span class="ico">적립</span>
                                        <span class="point">구매 시
                                            <strong class="emph">0원 적립</strong>
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <div class="cart-footer off">
                                <div class="functions">
                                </div>
                                <div class="button-wrap">
                                    <button type="button" class="base-button full">장바구니 담기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

        <div class="tab">
            <button class="tablinks" onclick="openPage(event, 'Detail')">상품 상세 설명</button>
            <button class="tablinks" onclick="openPage(event, 'Review')">상품 후기</button>
        </div>

        <div id="Detail" class="tabcontent">
            <div class="goods_wrap">
                <div class="goods_intro">
                    <div class="pic">
                        <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv00000020508_1.jpg">
                    </div>
                    <div class="context last">
                        <h3> <small>송로버섯의 깊은 풍미</small> [라 파브리카] 트러플 파스타 </h3>
                        <p class="words">'스파게티=파스타' 였던 때가 있었습니다. 하지만 지금은 누구나 '스파게티란 수백 가지의 파스타 면 종류 중 하나일 뿐'이라는 사실을 알죠. 우리에게 파스타는 밥만큼이나 익숙하고 만만한 음식이 됐습니다. 물에 넣고 끓여서 소스와 함께 버무리면 끝이니 이렇게 간단한 요리가 또 있을까요? 하지만 파스타 면을 삶을 때마다, 푸드마켓에서 신기한 파스타가 진열되는 모습을 보면서 아이러니하게도 궁금증은 더욱 커지기만 했습니다. 지금 내가 물에 넣고 있는 이 밀가루 덩어리는 어디서 왔을까? 파스타에도 등급이 있을까? 파스타 브랜드는 왜 이렇게 많은 거야!' <br> <br> '아는 만큼 맛있다'라는 생각으로 컬리는 파스타에 대해 공부했습니다. 시중의 거의 모든 브랜드와 파스타 종류를 섭렵한 결과는 의외로 심플했죠. 이탈리아 현지의 듀럼밀을 사용할 것, 되도록이면 전통 방식으로 뽑아낼 것, 그리고 저온에서 천천히 건조할 것. 그리고 이 세 가지를 갖춘 브랜드 중에서도 진짜 맛있는 파스타 브랜드를 다시 한번 골랐습니다. 컬리가 고른 브랜드는 바로 '라 파브리카'로 15세기부터 파스타로 유명했던 이탈리아 그라냐노 지역의 명물 파스타 브랜드입니다. '라 파브리카'라면 그들의 트러플 파스타를 빼놓고 파스타를 논할 수 없는데요. 131년의 전통을 이어온 파스타 회사의 프리미엄 트러플 파스타를 컬리에서 만나보세요.</p>
                    </div>
                </div>
                <div class="goods_point">
                    <h3><span>Kurly's Check Point</span></h3>
                    <div class="context last">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20190318/gv20000044943_1.jpg">
                        </div>
                    </div>
                </div>
                <div class="goods_desc">
                    <div class="context">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv20000020510_1.jpg">
                        </div>
                        <p class="words"> <strong class="sub_tit">트러플 풍미 가득한 파스타</strong> 세계 3대 진미로 늘 꼽히며 땅속의 다이아몬드라 불릴 정도로 귀한 식재료인 송로버섯(truffle). 그윽하고 매력적인 특유의 향기 덕분에 송로버섯이 들어간 음식은 어떤 것이라도 금방 고급 요리가 됩니다. 보통 트러플 향이 나는 제품들은 아무리 많아도 함유량이 0.5%를 넘지 않는 것이 보통인데 라 파브리카 트러플 파스타는 여름 송로버섯의 함량이 무려 1%, 송로버섯향은 0.4%나 함유되어 있습니다. 면에 트러플 입자가 눈에 보일 정도로 꽤 많은 양이 들어 있지요. 덕분에 고급스러운 풍미를 듬뿍 맛볼 수 있어요.<br> <br> 널찍한 너비와 통통한 두께 덕에 진한 치즈 소스를 가득히 묻혀 먹으면 더욱 풍부한 맛의 파스타를 즐길 수 있습니다. 트러플 파스타는 고유의 향기가 무척 진하기 때문에 크림소스나 같은 향기를 가진 트러플 오일과 함께 요리해 먹으면 잘 어울려요. 너무 강한 향의 소스보다는 트러플 자체의 풍미를 즐길 수 있도록 크리미한 소스와 함께 요리하세요. </p>
                    </div>
                    <div class="context last">
                        <div class="pic"> <a href="http://www.kurly.com/shop/board/list.php?id=recipe&amp;search%5Bsubject%5D=on&amp;search%5Bword%5D=%C6%C4%BD%BA%C5%B8" target="_blank"><img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv20000020520_1.jpg"></a>
                        </div>
                        <p class="words"> </p>
                    </div>
                </div>
                <div class="goods_tip">
                    <h3><span>Kurly’s Tip</span></h3>
                    <div class="tip_box">
                        <div class="context">
                            <p class="words"> &#x30fb;파스타 1인분의 적정량은 100~130g이며 삶는 시간은 약 9분입니다.<br> &#x30fb;라 파브리카 트러플 파스타는 2인분으로 포장되어 있으니 반 정도의 양으로 1인분을 요리하면 됩니다.<br> &#x30fb;남은 파스타는 가급적이면 개봉 후 2~3일 내에 다 먹는 것이 좋아요.<br> &#x30fb;개봉한 파스타는 밀폐 용기에 담아서 냉장 보관하세요.<br> &#x30fb;혹시 파스타를 만든 후 소스가 애매하게 남았나요? 그렇다면 볶음밥이나 카레 요리에 넣어보세요. 음식의 풍미를 더욱 살려주고 새콤한 맛을 더해주죠. 홈메이드 피자를 만들 때 활용해도 좋아요. </p>
                        </div>
                    </div>
                </div>
                <div class="goods_recipe">
                    <h3> <span class="recipe_tit">Kurly’s Recipe</span> <small class="recipe_product">까르보나라 트러플 파스타</small> </h3>
                    <div class="context ">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv00000020512_1.jpg">
                        </div>
                        <p class="words"> <strong class="recipe_item_tit">재료</strong> 라 파브리카 트러플 파스타 면 100g, 무가당 생크림 1컵, 달걀노른자 1개, 파마산 치즈 1/2컵, 베이컨 3-4줄, 소금, 후추, 화이트 트러플 오일 </p>
                        <p class="words"> <strong class="recipe_item_tit">RECIPE</strong> 1. 깊은 냄비에 물을 넉넉히 담고 소금을 1큰술 정도 넣은 뒤 끓기 시작하면 면을 10~12분간 삶아준다.<br> 2. 볼에 생크림, 달걀노른자를 넣고 잘 섞은 뒤 파마산 치즈를 갈아 듬뿍 넣어주고 소금, 후추를 살짝 넣어 소스를 완성한다.<br> 3. 베이컨은 바싹 구워 여분의 기름을 키친타월에 닦아내고 작은 한입 크기로 잘라둔다.<br> 4. 팬에 소스를 넣고 중약불에서 뭉근히 끓이고 팬 주변이 끓어오르기 시작하면 불을 더 줄여 면을 넣고 소스가 골고루 섞이도록 잘 저어준다. (너무 센 불에서 조리하면 노른자가 익을 수 있으니 주의한다.)<br> 5. 면을 접시에 예쁘게 담고 구워둔 베이컨과 굵은 후추, 화이트 트러플 오일 3~4방울로 마무리한다. </p>
                    </div>
                    <h3> <span class="recipe_tit">Kurly’s Recipe</span> <small class="recipe_product">트러플 크림 파스타</small> </h3>
                    <div class="context last">
                        <div class="pic">
                            <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv10000020513_1.jpg">
                        </div>
                        <p class="words"> <strong class="recipe_item_tit">재료</strong> 라 파브리카 트러플 파스타 면 100g, 트러플 크림 4~5큰술, 페코리노 치즈 적당량 </p>
                        <p class="words"> <strong class="recipe_item_tit">RECIPE</strong> 1. 깊은 냄비에 물을 넉넉히 담고 소금을 1큰술 정도 넣은 뒤 끓기 시작하면 면을 10~12분간 삶아준다.<br> 2. 팬에 트러플 크림을 넣고 가열해준다. 크림이 녹기 시작하면 삶아둔 면을 넣고 골고루 소스가 배어들게 한다.<br> 3. 접시에 소스를 담고 페코리노 치즈를 듬뿍 뿌려준다. </p>
                    </div>
                </div>
                <div class="about_brand">
                    <h3><span>About Brand</span></h3>
                    <div class="context last">
                        <div class="context_about">
                            <div class="pic">
                                <img src="//img-cf.kurly.com/shop/data/goodsview/20180328/gv30000020514_1.jpg">
                            </div>
                            <p class="words"> '라 파브리카 델라 파스타 디 그라냐노'는 '그라냐노의 파스타 공장'이라는 의미를 갖고 있습니다. 그라냐노는 파스타의 고향이라고 불릴 정도로 600여 년 이탈리아 파스타의 역사가 그대로 살아있는 지역입니다. 아말피 공화국 시절 이 작은 도시에 무려 140여 곳의 파스타 제조사가 있었고 오로지 파스타를 수송하기 위해 철도가 설치됐습니다. 파스타가 최초로 만들어진 지역은 아니지만 최적의 환경과 장인들의 열정이 이곳을 파스타의 도시로 만들었습니다. 라 파브리카의 파스타는 그라냐노의 장인정신을 이어받은 수제 파스타 브랜드입니다.<br> <br> <b>"그라냐노 거리 곳곳에 파스타 제조자들이 파스타 면을 세탁물같이 막대기에 걸어놓으면, 바다 공기와 산바람, 파스타 향기가 한데 섞여 도시를 취하게 만든다"</b><br> <br> 포브스(Forbes)지의 라이프 섹션에는 이런 문구가 실린 적이 있습니다. 그만큼 그라냐노(Gragnano)는 유서 깊은 파스타의 도시입니다. 나폴리로부터 30km 떨어진 이탈리아의 작은 도시인 이곳은 15세기부터 칼슘이 풍부한 물을 사용해 반죽한 수제 파스타로 유명했습니다. 거리 곳곳마다 파스타 면들이 주렁주렁 걸린 채 건조되고 있었고 이 지역에서 생산된 파스타를 수송하기 위해 이탈리아 철도가 생겼을 정도였죠. 라 파브리카의 전신인 '아펠트라(AFELTRA)'는 그라냐노의 전통 수제 파스타 회사 중의 하나였습니다.<br> <br> 1976년 아펠트라를 인수한 회사의 오너 마리오 모챠(Marion Moccia)는 대량 생산되는 파스타에 대항해 그라냐노 지역의 수제 파스타를 세계적으로 키우기 위해 노력했지요. 하지만 1980년 이탈리아 남부에 발생한 대지진으로 그의 꿈은 무너졌습니다. 많은 파스타 기업들이 사라졌고, 그는 공장을 복구하기 위해 많은 자금을 들였지만 그라냐노의 파스타를 다시 부흥시키기엔 역부족이었죠. 그러던 지난 2007년, 마리오 모챠의 자녀들은 1994년 문을 닫은 아버지의 파스타 회사를 다시 이어가기로 결심했습니다. 치로, 안토니오, 마리안나, 수잔나 모챠 남매는 '라 파브리카 델라 파스타 디 그라냐노(La Fabbrica della Pasta di Gragnano)'를 설립했지요. 가업으로 이어져 오던 수제 파스타 생산 기술을 바탕으로 새로운 기술과 스타일을 적용해, 더욱 발전된 프리미엄 파스타를 생산하기 시작했습니다. 그 결과, 라 파브리카는 131년의 역사를 잇는 세계적인 파스타 기업으로 성장했습니다. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="Review" class="tabcontent">
            <h3>상품 후기</h3>
            <p>여기에는 리뷰가 들어갑니다</p>
        </div>
        <script>
            function count(type)  {
                // 결과를 표시할 element
                let basicPrice = document.getElementById('basic-price');
                const resultElement = document.getElementById('result');
                const resultTotalPrice = document.getElementById('total-price');

                // 현재 화면에 표시된 값
                let number = resultElement.innerText;

                // 더하기/빼기
                if(type === 'plus') {
                    number = parseInt(number) + 1;
                }else if(type === 'minus')  {
                    number = parseInt(number) - 1;
                }
                // 결과 출력
                if(number < 1){
                    resultElement.innerText = "1";
                    resultTotalPrice.innerText = basicPrice.innerText;
                }else{
                    resultElement.innerText = number;
                    resultTotalPrice.innerText = (parseInt(basicPrice.innerText) * parseInt(number)) + "";
                }

            }

        </script>

        <script>
            function openPage(evt, pageName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(pageName).style.display = "block";
                evt.currentTarget.className += " active";
            }
        </script>
    </div>
</div>
</body>
</html>
