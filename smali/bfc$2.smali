.class Lbfc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->b()V
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

    iput-object p1, p0, Lbfc$2;->a:Lbfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbfc$2;->a:Lbfc;

    invoke-static {v0}, Lbfc;->b(Lbfc;)Lbff;

    move-result-object v0

    invoke-virtual {v0}, Lbff;->f()V

    iget-object v0, p0, Lbfc$2;->a:Lbfc;

    invoke-static {v0}, Lbfc;->a(Lbfc;)Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->f()V

    iget-object v0, p0, Lbfc$2;->a:Lbfc;

    invoke-static {v0}, Lbfc;->c(Lbfc;)Lbfb;

    move-result-object v0

    invoke-virtual {v0}, Lbfb;->f()V

    iget-object v0, p0, Lbfc$2;->a:Lbfc;

    invoke-static {v0}, Lbfc;->e(Lbfc;)V

    return-void
.end method
