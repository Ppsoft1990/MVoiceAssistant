.class Lep;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    iput-object p1, p0, Lep;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lep;->a:Leo;

    invoke-virtual {v0}, Leo;->d()V

    :cond_0
    return-void
.end method
