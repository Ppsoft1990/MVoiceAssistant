.class Lbfc$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfc;


# direct methods
.method constructor <init>(Lbfc;)V
    .locals 0

    iput-object p1, p0, Lbfc$4;->a:Lbfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lbfc$4;->a:Lbfc;

    invoke-static {v1}, Lbfc;->b(Lbfc;)Lbff;

    move-result-object v1

    iput-object v0, v1, Lbff;->c:Ljava/util/Date;

    iget-object v1, p0, Lbfc$4;->a:Lbfc;

    invoke-static {v1}, Lbfc;->b(Lbfc;)Lbff;

    move-result-object v1

    invoke-virtual {v1}, Lbff;->d()V

    iget-object v1, p0, Lbfc$4;->a:Lbfc;

    invoke-static {v1}, Lbfc;->a(Lbfc;)Lbfd;

    move-result-object v1

    iput-object v0, v1, Lbfd;->c:Ljava/util/Date;

    iget-object v0, p0, Lbfc$4;->a:Lbfc;

    invoke-static {v0}, Lbfc;->a(Lbfc;)Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->d()V

    return-void
.end method
