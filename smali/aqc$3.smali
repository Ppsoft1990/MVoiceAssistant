.class final Laqc$3;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqc;->b(Ljava/lang/String;Laqc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laqc$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Laqc$a;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Laqc$3;->a:Ljava/lang/String;

    iput-object p2, p0, Laqc$3;->b:Laqc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unRationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "MusicCoverHelper"

    const-string/jumbo v1, "no permission error "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 4
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
    .line 118
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Laqc$3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Laqc;->a(I)Lbcu;

    move-result-object v2

    new-instance v3, Laqc$3$1;

    invoke-direct {v3, p0}, Laqc$3$1;-><init>(Laqc$3;)V

    invoke-virtual {v0, v1, v2, v3}, Lazl;->a(Ljava/lang/String;Lbcu;Lbdd;)V

    .line 133
    return-void
.end method
