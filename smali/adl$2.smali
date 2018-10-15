.class Ladl$2;
.super Ljava/lang/Object;
.source "SpecificBroadcastSettingFragment.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ladl;


# direct methods
.method constructor <init>(Ladl;II)V
    .locals 0
    .param p1, "this$0"    # Ladl;

    .prologue
    .line 287
    iput-object p1, p0, Ladl$2;->c:Ladl;

    iput p2, p0, Ladl$2;->a:I

    iput p3, p0, Ladl$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 292
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_1

    .line 293
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v0

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local v1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl;

    .line 294
    .local v3, "permission":Lpl;
    invoke-virtual {v3}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v5, v6, :cond_4

    .line 295
    if-nez v1, :cond_3

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :goto_1
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v1, v0

    .line 300
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_0

    .end local v3    # "permission":Lpl;
    :cond_0
    move-object v0, v1

    .line 302
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 303
    iget-object v4, p0, Ladl$2;->c:Ladl;

    iget v5, p0, Ladl$2;->a:I

    iget v6, p0, Ladl$2;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ladl;->a(IIILjava/lang/Object;)V

    .line 310
    :goto_3
    return-void

    .line 305
    :cond_2
    iget-object v4, p0, Ladl$2;->c:Ladl;

    invoke-static {v4}, Ladl;->a(Ladl;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v4, "SpecificBroadcastSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 307
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_4

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v3    # "permission":Lpl;
    :cond_3
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_1

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_4
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_2
.end method
