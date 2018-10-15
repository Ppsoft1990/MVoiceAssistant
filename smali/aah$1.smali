.class Laah$1;
.super Ljava/lang/Object;
.source "PhoneTypeHashMapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laah;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laah;


# direct methods
.method constructor <init>(Laah;)V
    .locals 0
    .param p1, "this$0"    # Laah;

    .prologue
    .line 67
    iput-object p1, p0, Laah$1;->a:Laah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lil;->f:Ljava/lang/String;

    iget-object v2, p0, Laah$1;->a:Laah;

    invoke-static {v2}, Laah;->a(Laah;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method
