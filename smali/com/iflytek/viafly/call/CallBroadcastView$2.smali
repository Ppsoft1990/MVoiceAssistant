.class Lcom/iflytek/viafly/call/CallBroadcastView$2;
.super Ljava/lang/Object;
.source "CallBroadcastView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/call/CallBroadcastView;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/call/CallBroadcastView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/call/CallBroadcastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/call/CallBroadcastView;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView$2;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 174
    .local v0, "action":I
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView$2;->a:Lcom/iflytek/viafly/call/CallBroadcastView;

    const v3, 0x7f0b0296

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "buttonLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 179
    :cond_0
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    const-string/jumbo v3, "image.call_broadcast_dialog_btn_bg_pressed"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 180
    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 185
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/call/CallBroadcastView;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    const-string/jumbo v3, "image.call_broadcast_dialog_btn_bg_off"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 189
    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    const-string/jumbo v3, "image.call_broadcast_dialog_btn_bg_on"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 196
    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
