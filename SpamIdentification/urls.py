from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

app_name = 'SpamIdentification'

urlpatterns = [
	path('',views.home,name='home'),
	path('example/',views.example,name='example'),
	path('checkSpam/',views.checkSpam,name='check'),
	path('listData/',views.listData,name='list'),
	path('addData/',views.addData,name='add'),
	path('<int:id>/updateData/',views.updateData,name='update'),
	path('<int:id>/deleteData/',views.deleteData,name='delete'),
	path('login/',views.handleLogin,name='login'),
	path('logout/',views.handleLogout,name='logout'),
	path('prevention/',views.PreventionPage,name='prevention'),

]

urlpatterns += static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
