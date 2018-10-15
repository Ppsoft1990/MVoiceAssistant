.class Led;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lec;


# direct methods
.method constructor <init>(Lec;)V
    .locals 0

    iput-object p1, p0, Led;->a:Lec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Led;->a:Lec;

    invoke-static {v0}, Lec;->a(Lec;)V

    :cond_0
    return-void
.end method
