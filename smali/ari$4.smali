.class Lari$4;
.super Ljava/lang/Object;
.source "PluginController.java"

# interfaces
.implements Larr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lari;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0
    .param p1, "this$0"    # Lari;

    .prologue
    .line 293
    iput-object p1, p0, Lari$4;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 297
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallSuccess| pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lari$4;->a:Lari;

    invoke-virtual {v0, p1}, Lari;->d(I)V

    .line 299
    return-void
.end method

.method public a(II)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 303
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallFail() | type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " eC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lari$4;->a:Lari;

    invoke-virtual {v0, p1, p2}, Lari;->a(II)V

    .line 305
    return-void
.end method
