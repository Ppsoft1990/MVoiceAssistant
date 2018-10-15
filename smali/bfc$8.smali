.class Lbfc$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfc;->a(Lbdz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdz;

.field final synthetic b:Lbfc;


# direct methods
.method constructor <init>(Lbfc;Lbdz;)V
    .locals 0

    iput-object p1, p0, Lbfc$8;->b:Lbfc;

    iput-object p2, p0, Lbfc$8;->a:Lbdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbfc$8;->a:Lbdz;

    iget-object v1, p0, Lbfc$8;->b:Lbfc;

    invoke-static {v1}, Lbfc;->b(Lbfc;)Lbff;

    move-result-object v1

    iget-object v1, v1, Lbff;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbdz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbfc$8;->b:Lbfc;

    invoke-static {v0}, Lbfc;->c(Lbfc;)Lbfb;

    move-result-object v0

    iget-object v1, p0, Lbfc$8;->a:Lbdz;

    invoke-virtual {v0, v1}, Lbfb;->a(Lbdz;)V

    iget-object v0, p0, Lbfc$8;->b:Lbfc;

    invoke-static {v0}, Lbfc;->c(Lbfc;)Lbfb;

    move-result-object v0

    invoke-virtual {v0}, Lbfb;->k()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lbfc$8;->b:Lbfc;

    invoke-static {v0}, Lbfc;->d(Lbfc;)V

    :cond_0
    return-void
.end method
