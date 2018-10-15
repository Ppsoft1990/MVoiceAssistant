.class Laah$a;
.super Ljava/lang/Object;
.source "PhoneTypeHashMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Laah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Laah;

    invoke-direct {v0}, Laah;-><init>()V

    sput-object v0, Laah$a;->a:Laah;

    return-void
.end method
