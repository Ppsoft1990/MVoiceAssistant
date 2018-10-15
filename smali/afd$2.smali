.class Lafd$2;
.super Ljava/lang/Object;
.source "DialogResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafd;->a(Lafb;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafb;

.field final synthetic b:Lafd;


# direct methods
.method constructor <init>(Lafd;Lafb;)V
    .locals 0
    .param p1, "this$0"    # Lafd;

    .prologue
    .line 145
    iput-object p1, p0, Lafd$2;->b:Lafd;

    iput-object p2, p0, Lafd$2;->a:Lafb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lafd$2;->b:Lafd;

    iget-object v1, p0, Lafd$2;->a:Lafb;

    invoke-virtual {v1}, Lafb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafd;->a(Lafd;Ljava/lang/String;)V

    .line 149
    return-void
.end method
