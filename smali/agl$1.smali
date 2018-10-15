.class Lagl$1;
.super Ljava/lang/Object;
.source "GrayPermManager.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagl;


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 162
    iget-object v0, p0, Lagl$1;->a:Lagl;

    const-string/jumbo v1, "GrayPermManagerpermission"

    invoke-static {v0, v1, p1, p2}, Lagl;->a(Lagl;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 155
    iget-object v0, p0, Lagl$1;->a:Lagl;

    const-string/jumbo v1, "GrayPermManagerpermission"

    invoke-static {v0, v1, p1}, Lagl;->a(Lagl;Ljava/lang/String;Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 168
    return-void
.end method
