.class Lapm$5;
.super Ljava/lang/Object;
.source "MusicListPopWindow.java"

# interfaces
.implements Lapm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 199
    iput-object p1, p0, Lapm$5;->a:Lapm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 202
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->a(Lapm;)Laqj;

    move-result-object v2

    invoke-virtual {v2}, Laqj;->B()I

    move-result v0

    .line 203
    .local v0, "currentIndex":I
    if-ne v0, p1, :cond_2

    .line 205
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->c(Lapm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->d(Lapm;)Lapl;

    move-result-object v2

    invoke-virtual {v2}, Lapl;->notifyDataSetChanged()V

    .line 207
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->a(Lapm;)Laqj;

    move-result-object v2

    invoke-virtual {v2, p1}, Laqj;->a(I)V

    .line 218
    :cond_0
    :goto_0
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->c(Lapm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 219
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->a(Lapm;)Laqj;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Laqj;->e(I)V

    .line 220
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-virtual {v2}, Lapm;->dismiss()V

    .line 222
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "listDelete"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90010"

    invoke-virtual {v2, v3, v1}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    return-void

    .line 208
    .end local v1    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-le v0, p1, :cond_3

    .line 210
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->c(Lapm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->d(Lapm;)Lapl;

    move-result-object v2

    invoke-virtual {v2}, Lapl;->notifyDataSetChanged()V

    .line 212
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->a(Lapm;)Laqj;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Laqj;->g(I)V

    goto :goto_0

    .line 213
    :cond_3
    if-ge v0, p1, :cond_0

    .line 215
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->c(Lapm;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lapm$5;->a:Lapm;

    invoke-static {v2}, Lapm;->d(Lapm;)Lapl;

    move-result-object v2

    invoke-virtual {v2}, Lapl;->notifyDataSetChanged()V

    goto :goto_0
.end method
