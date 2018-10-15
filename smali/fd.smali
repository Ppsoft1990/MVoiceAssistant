.class Lfd;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lfc;


# direct methods
.method constructor <init>(Lfc;)V
    .locals 0

    iput-object p1, p0, Lfd;->a:Lfc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->i()V

    return-void
.end method
