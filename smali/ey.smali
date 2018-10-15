.class Ley;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lex$b;


# direct methods
.method constructor <init>(Lex$b;)V
    .locals 0

    iput-object p1, p0, Ley;->a:Lex$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->m()V

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->i()V

    return-void
.end method
