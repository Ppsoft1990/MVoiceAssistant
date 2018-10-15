.class Laoe$1;
.super Ljava/util/TimerTask;
.source "MiguLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoe;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoe;


# direct methods
.method constructor <init>(Laoe;)V
    .locals 0
    .param p1, "this$0"    # Laoe;

    .prologue
    .line 78
    iput-object p1, p0, Laoe$1;->a:Laoe;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Laoe$1;->a:Laoe;

    const-string/jumbo v1, "user_login"

    iget-object v2, p0, Laoe$1;->a:Laoe;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Laoe;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoe;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    return-void
.end method
