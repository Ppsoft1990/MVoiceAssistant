.class Lhg$1;
.super Ljava/lang/Object;
.source "ContactUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhg;


# direct methods
.method constructor <init>(Lhg;)V
    .locals 0
    .param p1, "this$0"    # Lhg;

    .prologue
    .line 206
    iput-object p1, p0, Lhg$1;->a:Lhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lil;->d:Ljava/lang/String;

    iget-object v2, p0, Lhg$1;->a:Lhg;

    invoke-static {v2}, Lhg;->a(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lil;->e:Ljava/lang/String;

    iget-object v2, p0, Lhg$1;->a:Lhg;

    invoke-static {v2}, Lhg;->b(Lhg;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    return-void
.end method
