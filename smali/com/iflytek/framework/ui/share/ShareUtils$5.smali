.class final Lcom/iflytek/framework/ui/share/ShareUtils$5;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareUtils;->initProcessDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 307
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-virtual {v0}, Lazl;->b()V

    .line 308
    invoke-static {}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$500()V

    .line 309
    return-void
.end method
