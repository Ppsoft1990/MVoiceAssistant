.class Laxn$1$1;
.super Ljava/lang/Object;
.source "TrafficStatsHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxn$1;


# direct methods
.method constructor <init>(Laxn$1;)V
    .locals 0
    .param p1, "this$1"    # Laxn$1;

    .prologue
    .line 143
    iput-object p1, p0, Laxn$1$1;->a:Laxn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Laxn$1$1;->a:Laxn$1;

    iget-object v0, v0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->c(Laxn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Laxn$1$1;->a:Laxn$1;

    iget-object v0, v0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->d(Laxn;)V

    .line 149
    iget-object v0, p0, Laxn$1$1;->a:Laxn$1;

    iget-object v0, v0, Laxn$1;->a:Laxn;

    invoke-static {v0}, Laxn;->e(Laxn;)V

    .line 151
    :cond_0
    return-void
.end method
