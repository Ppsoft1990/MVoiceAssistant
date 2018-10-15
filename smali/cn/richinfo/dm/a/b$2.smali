.class Lcn/richinfo/dm/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/richinfo/dm/a/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/richinfo/dm/a/b;


# direct methods
.method constructor <init>(Lcn/richinfo/dm/a/b;)V
    .locals 0

    iput-object p1, p0, Lcn/richinfo/dm/a/b$2;->a:Lcn/richinfo/dm/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/a/a/u;)V
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/a/b$2;->a:Lcn/richinfo/dm/a/b;

    invoke-static {v0}, Lcn/richinfo/dm/a/b;->a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/richinfo/dm/DMSDK;->stopReportService(Landroid/content/Context;)V

    return-void
.end method
