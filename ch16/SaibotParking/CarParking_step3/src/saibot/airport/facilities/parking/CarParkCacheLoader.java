package saibot.airport.facilities.parking;

import com.bea.cache.jcache.CacheLoader;
import com.bea.wlevs.ede.api.EventTypeRepository;
import com.bea.wlevs.util.Service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.InitializingBean;

public class CarParkCacheLoader implements CacheLoader<String, Object>, InitializingBean {
  
    private Map<String, Object> parksMap = new HashMap<String, Object>();
    private EventTypeRepository m_etr;

   

    @Service
    public void setEventTypeRepository(EventTypeRepository etr) {
        m_etr = etr;
    }


    @Override
    public Object load(String carparkIdentifier) {
        return parksMap.get(carparkIdentifier);
    }

    @Override
    public Map<String, Object> loadAll(Collection<String> keysCollection) {
        Map<String, Object> retVal = new HashMap<String, Object>();
        for (String akey : keysCollection) {
            Object value = parksMap.get(akey);
            if (value != null)
                retVal.put(akey, value);
        }

        return retVal;
    }

    @Override
    public Map<String, Object> loadAll() {
        if (parksMap.isEmpty()) {
            try {
                afterPropertiesSet();
            } catch (Exception e) {
            }
        }
        return new HashMap<String, Object>(parksMap);
    }

    @Override
    public void afterPropertiesSet() throws Exception { 
        if (parksMap.isEmpty()){
        parksMap.put("13", new CarPark("13", "VIP Parking Lot", 150));
        parksMap.put("16", new CarPark("16", "Traveller Parking Area I", 120));
        parksMap.put("18", new CarPark("18", "Traveller Parking Area II", 250));
        parksMap.put("22", new CarPark("22", "Short Stay Parking Lot", 170));
        parksMap.put("27", new CarPark("27", "Rather not stay parking area", 350));
        }


    }

   
}
