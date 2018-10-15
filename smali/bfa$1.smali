.class Lbfa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfa;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfa;


# direct methods
.method constructor <init>(Lbfa;)V
    .locals 0

    iput-object p1, p0, Lbfa$1;->a:Lbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbfa$1;->a:Lbfa;

    invoke-static {v0}, Lbfa;->a(Lbfa;)V

    return-void
.end method
