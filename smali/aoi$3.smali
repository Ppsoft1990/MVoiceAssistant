.class Laoi$3;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .param p1, "this$0"    # Laoi;

    .prologue
    .line 245
    iput-object p1, p0, Laoi$3;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 248
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "login Page Cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Laoi$3;->a:Laoi;

    const/16 v1, 0x7d4

    invoke-static {v0, v1}, Laoi;->b(Laoi;I)V

    .line 250
    return-void
.end method
