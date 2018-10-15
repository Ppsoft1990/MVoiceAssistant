.class public Lahb;
.super Laht;
.source "HomeGrayControlHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p0}, Lahb;->p()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/Home;

    invoke-virtual {v0}, Lcom/iflytek/viafly/Home;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/UIUtil;->openHardwareAccelarate(Landroid/view/Window;)V

    .line 40
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
