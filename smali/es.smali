.class Les;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    iput-object p1, p0, Les;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Les;->a:Leo;

    invoke-static {v0}, Leo;->b(Leo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Les;->a:Leo;

    invoke-static {v0}, Leo;->c(Leo;)V

    :cond_0
    return-void
.end method
