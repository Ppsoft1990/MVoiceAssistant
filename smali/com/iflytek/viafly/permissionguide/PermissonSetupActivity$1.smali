.class Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;
.super Ljava/lang/Object;
.source "PermissonSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a(Lcom/iflytek/base/skin/customView/XLinearLayout;Lcom/iflytek/common/permission/data/PermissionGuide;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

.field final synthetic b:Lcom/iflytek/base/skin/customView/XTextView;

.field final synthetic c:Lcom/iflytek/base/skin/customView/XImageView;

.field final synthetic d:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;Lcom/iflytek/base/skin/customView/XRelativeLayout;Lcom/iflytek/base/skin/customView/XTextView;Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->d:Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    iput-object p3, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->b:Lcom/iflytek/base/skin/customView/XTextView;

    iput-object p4, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, -0x1

    .line 259
    invoke-static {}, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event.action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v1, "image.btn_menu_install_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_permission_list_arrow_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 279
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 265
    invoke-static {p2, p1}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v1, "image.btn_menu_install_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 268
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_permission_list_arrow_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v1, "image.btn_menu_install_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->b:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#37ba91"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_permission_list_arrow_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->a:Lcom/iflytek/base/skin/customView/XRelativeLayout;

    const-string/jumbo v1, "image.btn_menu_install_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 276
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->b:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "#37ba91"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 277
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissonSetupActivity$1;->c:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v1, "image.ic_permission_list_arrow_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method
