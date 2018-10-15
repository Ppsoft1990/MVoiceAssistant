.class Lahc$1;
.super Ljava/lang/Object;
.source "HomeHeadsetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahc;->b(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahc;


# direct methods
.method constructor <init>(Lahc;)V
    .locals 0
    .param p1, "this$0"    # Lahc;

    .prologue
    .line 71
    iput-object p1, p0, Lahc$1;->a:Lahc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lahc$1;->a:Lahc;

    invoke-virtual {v0}, Lahc;->g()V

    .line 75
    return-void
.end method
