.class Lbam$8;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbam;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbam;


# direct methods
.method constructor <init>(Lbam;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbam;

    .prologue
    .line 230
    iput-object p1, p0, Lbam$8;->b:Lbam;

    iput-object p2, p0, Lbam$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 238
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lbam$8;->b:Lbam;

    invoke-static {v0}, Lbam;->b(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 239
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 2
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
    .line 233
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lbam$8;->b:Lbam;

    iget-object v1, p0, Lbam$8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lbam;->a(Lbam;Ljava/lang/String;)V

    .line 234
    return-void
.end method
