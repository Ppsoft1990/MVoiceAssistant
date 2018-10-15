.class final Lhc$1;
.super Ljava/lang/Object;
.source "ContactCompareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 108
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    sget-object v1, Lil;->b:Ljava/lang/String;

    invoke-static {}, Lhc;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-void
.end method
