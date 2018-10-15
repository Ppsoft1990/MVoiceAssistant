.class Lhe$3;
.super Ljava/lang/Object;
.source "ContactManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhe;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhe;


# direct methods
.method constructor <init>(Lhe;)V
    .locals 0
    .param p1, "this$0"    # Lhe;

    .prologue
    .line 588
    iput-object p1, p0, Lhe$3;->a:Lhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 591
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lil;->c:Ljava/lang/String;

    iget-object v2, p0, Lhe$3;->a:Lhe;

    invoke-static {v2}, Lhe;->b(Lhe;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    return-void
.end method
