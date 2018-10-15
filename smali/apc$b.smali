.class Lapc$b;
.super Ljava/lang/Object;
.source "RequestMonitorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lapc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lapc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapc;-><init>(Lapc$1;)V

    sput-object v0, Lapc$b;->a:Lapc;

    return-void
.end method
