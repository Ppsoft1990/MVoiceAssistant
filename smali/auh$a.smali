.class Lauh$a;
.super Ljava/lang/Object;
.source "ScheduleBusinessChannelHandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lauh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lauh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lauh;-><init>(Lauh$1;)V

    sput-object v0, Lauh$a;->a:Lauh;

    return-void
.end method
