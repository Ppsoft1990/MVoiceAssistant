.class Lee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lec;


# direct methods
.method constructor <init>(Lec;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lee;->c:Lec;

    iput-object p2, p0, Lee;->a:Ljava/lang/String;

    iput-object p3, p0, Lee;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lee;->c:Lec;

    iget-object v1, p0, Lee;->a:Ljava/lang/String;

    iget-object v2, p0, Lee;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lec;->a(Lec;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lee;->c:Lec;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lec;->a(Lec;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lee;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
