.class Lasv$1;
.super Ljava/lang/Object;
.source "PluginLabelItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasv;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasv;


# direct methods
.method constructor <init>(Lasv;)V
    .locals 0
    .param p1, "this$0"    # Lasv;

    .prologue
    .line 74
    iput-object p1, p0, Lasv$1;->a:Lasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    const-string/jumbo v0, "PluginLabelItem"

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

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_menu_install_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 93
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 82
    invoke-static {p2, p1}, Lcom/iflytek/yd/util/UIUtil;->isInMyView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_menu_install_press"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#37ba91"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_menu_install_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "#37ba91"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lasv$1;->a:Lasv;

    invoke-static {v0}, Lasv;->a(Lasv;)Lcom/iflytek/base/skin/customView/XTextView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_menu_install_nor"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0
.end method
