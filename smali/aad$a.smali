.class Laad$a;
.super Ljava/lang/Object;
.source "PhoneNumTypeDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Laad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Laad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laad;-><init>(Laad$1;)V

    sput-object v0, Laad$a;->a:Laad;

    return-void
.end method
