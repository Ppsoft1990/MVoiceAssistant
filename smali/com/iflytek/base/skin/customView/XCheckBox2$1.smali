.class Lcom/iflytek/base/skin/customView/XCheckBox2$1;
.super Ljava/lang/Object;
.source "XCheckBox2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/skin/customView/XCheckBox2;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;


# direct methods
.method constructor <init>(Lcom/iflytek/base/skin/customView/XCheckBox2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/skin/customView/XCheckBox2;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->access$000(Lcom/iflytek/base/skin/customView/XCheckBox2;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XCheckBox2;->setChecked(Z)V

    .line 62
    iget-object v2, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XCheckBox2$1;->this$0:Lcom/iflytek/base/skin/customView/XCheckBox2;

    invoke-static {v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->access$000(Lcom/iflytek/base/skin/customView/XCheckBox2;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/iflytek/base/skin/customView/XCheckBox2;->access$002(Lcom/iflytek/base/skin/customView/XCheckBox2;Z)Z

    .line 64
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method
