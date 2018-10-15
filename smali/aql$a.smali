.class Laql$a;
.super Ljava/lang/Object;
.source "ProcessRegistImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Laql;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Laql;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laql;-><init>(Laql$1;)V

    sput-object v0, Laql$a;->a:Laql;

    return-void
.end method
