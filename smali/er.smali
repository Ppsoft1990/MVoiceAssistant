.class Ler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    iput-object p1, p0, Ler;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ler;->a:Leo;

    invoke-static {v0}, Leo;->a(Leo;)V

    return-void
.end method
