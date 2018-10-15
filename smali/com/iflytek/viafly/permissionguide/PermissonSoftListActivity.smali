.class public Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "PermissonSoftListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "INTENT_EXTRA_PERMISSION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-static {p0}, Lon;->a(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "INTENT_EXTRA_PERMISSION_TYPE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "type":Ljava/lang/String;
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    .line 85
    iget-object v2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 88
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    .line 95
    new-instance v2, Lcom/iflytek/base/skin/customView/XListView;

    invoke-direct {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "listView":Lcom/iflytek/base/skin/customView/XListView;
    const-string/jumbo v6, "#00000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XListView;->setCacheColorHint(I)V

    .line 97
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v7, "#00000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 98
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {p0, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XListView;->setDividerHeight(I)V

    .line 99
    const v6, 0x106000d

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XListView;->setSelector(I)V

    .line 100
    new-instance v0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;-><init>(Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;)V

    .line 101
    .local v0, "adapter":Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity$a;
    invoke-virtual {v2, v0}, Lcom/iflytek/base/skin/customView/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {v2, p0}, Lcom/iflytek/base/skin/customView/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 104
    .local v1, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XListView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v6

    const-string/jumbo v7, "20"

    const-string/jumbo v8, "20"

    const-string/jumbo v9, "20"

    const-string/jumbo v10, "20"

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v5, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v5, p0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v5, "tipText":Lcom/iflytek/base/skin/customView/XTextView;
    const v6, 0x7f0c0140

    invoke-virtual {v5, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(I)V

    .line 109
    const-string/jumbo v6, "permission_setup_item_tip_style"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 111
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v12, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    .local v4, "tipParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v5, v4}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v5}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v3

    .line 114
    .local v3, "tipHelper":Lcom/iflytek/base/skin/customView/SpaceViewHelper;
    const-string/jumbo v6, "25"

    const-string/jumbo v7, "30"

    const-string/jumbo v8, "25"

    const-string/jumbo v9, "30"

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargins(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->setTitleBarBg()V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->setTitleBarVisible(Z)V

    .line 67
    const v0, 0x7f0c0144

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->setTitleName(I)V

    .line 68
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->finish()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->b:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/permission/data/Permission;

    .line 204
    .local v0, "permission":Lcom/iflytek/common/permission/data/Permission;
    if-nez v0, :cond_1

    .line 205
    sget-object v1, Lcom/iflytek/viafly/permissionguide/PermissonSoftListActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Permission is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v0    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0    # "permission":Lcom/iflytek/common/permission/data/Permission;
    :cond_1
    invoke-static {p0, v0}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Landroid/content/Context;Lcom/iflytek/common/permission/data/Permission;)V

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
