.class Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;
.super Landroid/widget/BaseAdapter;
.source "PermissonSoftListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    const/4 v10, 0x0

    .line 148
    .local v10, "viewHolder":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    if-nez p2, :cond_1

    .line 149
    new-instance v10, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;

    .end local v10    # "viewHolder":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;-><init>(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$1;)V

    .line 150
    .restart local v10    # "viewHolder":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    new-instance v6, Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-direct {v6, v11}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v6, "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    const-string/jumbo v11, "statelist.permission_list_item_state"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v11, v12}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 152
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    const-wide v14, 0x4046800000000000L    # 45.0

    invoke-static {v12, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v12

    invoke-direct {v4, v11, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 153
    .local v4, "itemParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v4}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    const-wide/high16 v12, 0x402a000000000000L    # 13.0

    invoke-static {v11, v12, v13}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    const-wide/high16 v14, 0x402a000000000000L    # 13.0

    invoke-static {v13, v14, v15}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setPadding(IIII)V

    .line 155
    new-instance v9, Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-direct {v9, v11}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v9, "titleView":Lcom/iflytek/base/skin/customView/XTextView;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v8, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0x9

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    const/16 v11, 0xf

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v9, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const-string/jumbo v11, "permission_list_item_text_style"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v9, v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 161
    invoke-virtual {v6, v9}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    new-instance v3, Lcom/iflytek/base/skin/customView/XImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-direct {v3, v11}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v3, "arrowView":Lcom/iflytek/base/skin/customView/XImageView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v2, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    const/16 v11, 0xf

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    invoke-virtual {v3, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const-string/jumbo v11, "image.ic_subpage_list_arrow"

    sget-object v12, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v11, v12}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 169
    invoke-virtual {v6, v3}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    iput-object v9, v10, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;->a:Lcom/iflytek/base/skin/customView/XTextView;

    .line 173
    move-object/from16 p2, v6

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    .end local v2    # "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "arrowView":Lcom/iflytek/base/skin/customView/XImageView;
    .end local v4    # "itemParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "rootView":Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .end local v8    # "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "titleView":Lcom/iflytek/base/skin/customView/XTextView;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;->a:Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-static {v11}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/common/permission/data/Permission;

    .line 180
    .local v5, "permission":Lcom/iflytek/common/permission/data/Permission;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 181
    invoke-virtual {v5}, Lcom/iflytek/common/permission/data/Permission;->getPermissionApp()Lcom/iflytek/common/permission/data/PermissionApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/common/permission/data/PermissionApp;->getAppName()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "softName":Ljava/lang/String;
    iget-object v11, v10, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;->a:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v11, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v7    # "softName":Ljava/lang/String;
    :cond_0
    return-object p2

    .line 176
    .end local v5    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "viewHolder":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    check-cast v10, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;

    .restart local v10    # "viewHolder":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a$a;
    goto :goto_0
.end method
