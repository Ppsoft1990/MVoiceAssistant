.class final Llo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lll;


# direct methods
.method constructor <init>(Lll;)V
    .locals 0

    iput-object p1, p0, Llo;->a:Lll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llo;->a:Lll;

    invoke-static {v0}, Lll;->g(Lll;)V

    return-void
.end method
